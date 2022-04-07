#ifdef VITA
#include <vitaGL.h>
#else
#include <GL/gl.h>
#endif
#include "core/core.h"
#include "host/host.h"
#include "render/render_backend.h"

enum texture_map {
  MAP_DIFFUSE,
};

struct texture {
  GLuint texture;
};

struct viewport {
  int x, y, w, h;
};

struct render_backend {
  struct host *host;
  int width, height;

  /* current viewport */
  struct viewport viewport;

  /* default assets created during intitialization */
  GLuint white_texture;

  /* offscreen framebuffer for blitting raw pixels */
  GLuint pixel_fbo;
  GLuint pixel_texture;

  /* texture cache */
  struct texture textures[MAX_TEXTURES];

  /* surface render state */
  int ui_use_index;
  uint16_t *indices;

  /* global uniforms that are constant for every surface rendered between a call
     to begin_surfaces and end_surfaces */
  uint64_t uniform_token;
  float uniform_video_scale[4];
};

static GLenum filter_funcs[] = {
    GL_NEAREST,               /* FILTER_NEAREST */
    GL_LINEAR,                /* FILTER_BILINEAR */
    GL_NEAREST_MIPMAP_LINEAR, /* FILTER_NEAREST + mipmaps */
    GL_LINEAR_MIPMAP_LINEAR   /* FILTER_BILINEAR + mipmaps */
};

static GLenum wrap_modes[] = {
    GL_REPEAT,         /* WRAP_REPEAT */
    GL_CLAMP_TO_EDGE,  /* WRAP_CLAMP_TO_EDGE */
    GL_MIRRORED_REPEAT /* WRAP_MIRRORED_REPEAT */
};

static GLenum depth_funcs[] = {
    0,     /* DEPTH_NONE */
    GL_NEVER,    /* DEPTH_NEVER */
    GL_LESS,     /* DEPTH_LESS */
    GL_EQUAL,    /* DEPTH_EQUAL */
    GL_LEQUAL,   /* DEPTH_LEQUAL */
    GL_GREATER,  /* DEPTH_GREATER */
    GL_NOTEQUAL, /* DEPTH_NEQUAL */
    GL_GEQUAL,   /* DEPTH_GEQUAL */
    GL_ALWAYS    /* DEPTH_ALWAYS */
};

static GLenum cull_face[] = {
    0,  /* CULL_NONE */
    GL_FRONT, /* CULL_FRONT */
    GL_BACK   /* CULL_BACK */
};

static GLenum blend_funcs[] = {0,
                               GL_ZERO,
                               GL_ONE,
                               GL_SRC_COLOR,
                               GL_ONE_MINUS_SRC_COLOR,
                               GL_SRC_ALPHA,
                               GL_ONE_MINUS_SRC_ALPHA,
                               GL_DST_ALPHA,
                               GL_ONE_MINUS_DST_ALPHA,
                               GL_DST_COLOR,
                               GL_ONE_MINUS_DST_COLOR};

static GLenum prim_types[] = {
    GL_TRIANGLES, /* PRIM_TRIANGLES */
    GL_LINES,     /* PRIM_LINES */
};

static GLuint internal_formats[] = {
    GL_RGB,  /* PXL_RGB */
    GL_RGBA, /* PXL_RGBA */
    GL_RGBA, /* PXL_RGBA5551 */
    GL_RGB,  /* PXL_RGB565 */
    GL_RGBA, /* PXL_RGBA4444 */
};

static GLuint pixel_formats[] = {
    GL_UNSIGNED_BYTE,          /* PXL_RGB */
    GL_UNSIGNED_BYTE,          /* PXL_RGBA */
    GL_UNSIGNED_SHORT_5_5_5_1, /* PXL_RGBA5551 */
    GL_UNSIGNED_SHORT_5_6_5,   /* PXL_RGB565 */
    GL_UNSIGNED_SHORT_4_4_4_4, /* PXL_RGBA4444 */
};

static inline void r_bind_texture(struct render_backend *r,
                                  enum texture_map map, GLuint tex) {
  glActiveTexture(GL_TEXTURE0 + map);
  glBindTexture(GL_TEXTURE_2D, tex);
}

static void r_create_textures(struct render_backend *r) {
  /* create default all white texture */
  uint8_t pixels[64 * 64 * 4];
  memset(pixels, 0xff, sizeof(pixels));
  
  glGenTextures(1, &r->pixel_texture);
  glGenTextures(1, &r->white_texture);
  glBindTexture(GL_TEXTURE_2D, r->white_texture);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 64, 64, 0, GL_RGBA, GL_UNSIGNED_BYTE,
               pixels);
  glBindTexture(GL_TEXTURE_2D, 0);
}

static void r_set_initial_state(struct render_backend *r) {
  glDepthMask(1);
  glDisable(GL_DEPTH_TEST);

  glEnable(GL_CULL_FACE);
  glCullFace(GL_BACK);

  glDisable(GL_BLEND);
}

static void r_set_render_state(struct render_backend *r,
                                               const struct ta_surface *surf) {
  if (surf->params.texture) {
    glEnable(GL_TEXTURE_2D);
  }
  else {
    glDisable(GL_TEXTURE_2D);
  }

  if (surf->params.ignore_alpha) {
    //glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
  }
  else {
    //glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
  }

  if (surf->params.ignore_texture_alpha) {
    //idx |= ATTR_IGNORE_TEXTURE_ALPHA;
  }
  if (surf->params.offset_color) {
    //idx |= ATTR_OFFSET_COLOR;
  }
  if (surf->params.alpha_test) {
    //idx |= ATTR_ALPHA_TEST;
  }
  if (surf->params.debug_depth) {
    //idx |= ATTR_DEBUG_DEPTH_BUFFER;
  }
}

void r_end_ui_surfaces(struct render_backend *r) {
  glDisable(GL_SCISSOR_TEST);
}

void r_draw_ui_surface(struct render_backend *r,
                       const struct ui_surface *surf) {
  if (surf->scissor) {
    glEnable(GL_SCISSOR_TEST);
    glScissor((int)surf->scissor_rect[0], (int)surf->scissor_rect[1],
              (int)surf->scissor_rect[2], (int)surf->scissor_rect[3]);
  } else {
    glDisable(GL_SCISSOR_TEST);
  }

  if (surf->src_blend == BLEND_NONE || surf->dst_blend == BLEND_NONE) {
    glDisable(GL_BLEND);
  } else {
    glEnable(GL_BLEND);
    glBlendFunc(blend_funcs[surf->src_blend], blend_funcs[surf->dst_blend]);
  }

  if (surf->texture) {
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    struct texture *tex = &r->textures[surf->texture];
    r_bind_texture(r, MAP_DIFFUSE, tex->texture);
  } else {
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    r_bind_texture(r, MAP_DIFFUSE, r->white_texture);
  }

  if (r->ui_use_index) {
    glDrawElements(prim_types[surf->prim_type], surf->num_verts,
                   GL_UNSIGNED_SHORT,
                   (void *)(r->indices) + (sizeof(uint16_t) * surf->first_vert));
  } else {
    glDrawArrays(prim_types[surf->prim_type], surf->first_vert,
                 surf->num_verts);
  }
}

void r_begin_ui_surfaces(struct render_backend *r,
                         const struct ui_vertex *verts, int num_verts,
                         const uint16_t *indices, int num_indices) {
  /* setup projection matrix */
  float ortho[16];
  ortho[0] = 2.0f / (float)r->viewport.w;
  ortho[4] = 0.0f;
  ortho[8] = 0.0f;
  ortho[12] = -1.0f;

  ortho[1] = 0.0f;
  ortho[5] = -2.0f / (float)r->viewport.h;
  ortho[9] = 0.0f;
  ortho[13] = 1.0f;

  ortho[2] = 0.0f;
  ortho[6] = 0.0f;
  ortho[10] = 0.0f;
  ortho[14] = 0.0f;

  ortho[3] = 0.0f;
  ortho[7] = 0.0f;
  ortho[11] = 0.0f;
  ortho[15] = 1.0f;

  glMatrixMode(GL_PROJECTION);
  glLoadMatrixf(ortho);

  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();

  glDepthMask(0);
  glDisable(GL_DEPTH_TEST);
  glDisable(GL_CULL_FACE);

  /* xyz */
  glEnableClientState(GL_VERTEX_ARRAY);
  glVertexPointer(2, GL_FLOAT, sizeof(struct ui_vertex),
                  (void*)verts + offsetof(struct ui_vertex, xy));

  /* texcoord */
  glEnableClientState(GL_TEXTURE_COORD_ARRAY);
  glTexCoordPointer(2, GL_FLOAT, sizeof(struct ui_vertex),
                    (void*)verts + offsetof(struct ui_vertex, uv));

  /* color */
  glEnableClientState(GL_COLOR_ARRAY);
  glColorPointer(4, GL_UNSIGNED_BYTE, sizeof(struct ui_vertex),
                    (void*)verts + offsetof(struct ui_vertex, color));

  if (indices) {
    r->indices = indices;
    r->ui_use_index = 1;
  } else {
    r->indices = NULL;
    r->ui_use_index = 0;
  }
}

void r_end_ta_surfaces(struct render_backend *r) {}

void r_draw_ta_surface(struct render_backend *r,
                       const struct ta_surface *surf) {
  glDepthMask(!!surf->params.depth_write);

  if (surf->params.depth_func == DEPTH_NONE) {
    glDisable(GL_DEPTH_TEST);
  } else {
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(depth_funcs[surf->params.depth_func]);
  }

  if (surf->params.cull == CULL_NONE) {
    glDisable(GL_CULL_FACE);
  } else {
    glEnable(GL_CULL_FACE);
    glCullFace(cull_face[surf->params.cull]);
  }

  if (surf->params.src_blend == BLEND_NONE ||
      surf->params.dst_blend == BLEND_NONE) {
    glDisable(GL_BLEND);
  } else {
    glEnable(GL_BLEND);
    glBlendFunc(blend_funcs[surf->params.src_blend],
                blend_funcs[surf->params.dst_blend]);
  }

  r_set_render_state(r, surf);

  /* bind global uniforms if they've changed 
  if (program->uniform_token != r->uniform_token) {
    glUniform4fv(program->loc[UNIFORM_VIDEO_SCALE], 1, r->uniform_video_scale);
    program->uniform_token = r->uniform_token;
  }

  /* bind non-global uniforms every time
  float alpha_ref = surf->params.alpha_ref / 255.0f;
  glUniform1f(program->loc[UNIFORM_ALPHA_REF], alpha_ref);*/

  if (surf->params.texture) {
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    struct texture *tex = &r->textures[surf->params.texture];
    r_bind_texture(r, MAP_DIFFUSE, tex->texture);
  }
  else {
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
  }

  glDrawElements(GL_TRIANGLES, surf->num_verts, GL_UNSIGNED_SHORT,
                 (void *)(r->indices) + (sizeof(uint16_t) * surf->first_vert));
}

void r_begin_ta_surfaces(struct render_backend *r, int video_width,
                         int video_height, const struct ta_vertex *verts,
                         int num_verts, const uint16_t *indices,
                         int num_indices) {

  float projection[16];
  projection[0] = 2.0f / (float)video_width;
  projection[4] = 0.0f;
  projection[8] = 0.0f;
  projection[12] = -1.0f;

  projection[1] = 0.0f;
  projection[5] = -2.0f / (float)video_height;
  projection[9] = 0.0f;
  projection[13] = 1.0f;

  projection[2] = 0.0f;
  projection[6] = 0.0f;
  projection[10] = 0.0f;
  projection[14] = 0.0f;

  projection[3] = 0.0f;
  projection[7] = 0.0f;
  projection[11] = 0.0f;
  projection[15] = 1.0f;

  glMatrixMode(GL_PROJECTION);
  glLoadMatrixf(projection);

  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();

  /* xyz */
  glEnableClientState(GL_VERTEX_ARRAY);
  glVertexPointer(3, GL_FLOAT, sizeof(struct ta_vertex),
                  (void*)verts + offsetof(struct ta_vertex, xyz));

  /* texcoord */
  glEnableClientState(GL_TEXTURE_COORD_ARRAY);
  glTexCoordPointer(2, GL_FLOAT, sizeof(struct ta_vertex),
                    (void*)verts + offsetof(struct ta_vertex, uv));

  /* color */
  glEnableClientState(GL_COLOR_ARRAY);
  glColorPointer(4, GL_UNSIGNED_BYTE, sizeof(struct ta_vertex),
                    (void*)verts + offsetof(struct ta_vertex, color));

  r->indices = indices;
}

void r_draw_pixels(struct render_backend *r, const uint8_t *pixels, int x,
                   int y, int width, int height) {
  glBindTexture(GL_TEXTURE_2D, r->pixel_texture);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, pixels);
  glUseProgram(0);
  glDisable(GL_CULL_FACE);
  glDisable(GL_DEPTH_TEST);
  glDisable(GL_BLEND);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(0, width, height, 0, -1, 1);
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();
  glBegin(GL_QUADS);
  glTexCoord2i(0, 0);
  glVertex3f(0, 0, -1);
  glTexCoord2i(1, 0);
  glVertex3f(width, 0, -1);
  glTexCoord2i(1, 1);
  glVertex3f(width, height, -1);
  glTexCoord2i(0, 1);
  glVertex3f(0, height, -1);
  glEnd();
}

void r_viewport(struct render_backend *r, int x, int y, int width, int height) {
  r->viewport.x = x;
  r->viewport.y = y;
  r->viewport.w = width;
  r->viewport.h = height;
  glViewport(r->viewport.x, r->viewport.y, r->viewport.w, r->viewport.h);
}

void r_clear(struct render_backend *r) {
  glDepthMask(1);
  glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
  glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
}

void r_destroy_texture(struct render_backend *r, texture_handle_t handle) {
  if (!handle) {
    return;
  }

  struct texture *tex = &r->textures[handle];
  glDeleteTextures(1, &tex->texture);
  tex->texture = 0;
}

texture_handle_t r_create_texture(struct render_backend *r,
                                  enum pxl_format format,
                                  enum filter_mode filter,
                                  enum wrap_mode wrap_u, enum wrap_mode wrap_v,
                                  int mipmaps, int width, int height,
                                  const uint8_t *buffer) {
  /* find next open texture entry */
  texture_handle_t handle;
  for (handle = 1; handle < MAX_TEXTURES; handle++) {
    struct texture *tex = &r->textures[handle];
    if (!tex->texture) {
      break;
    }
  }
  CHECK_LT(handle, MAX_TEXTURES);

  GLuint internal_fmt = internal_formats[format];
  GLuint pixel_fmt = pixel_formats[format];

  struct texture *tex = &r->textures[handle];

  glGenTextures(1, &tex->texture);
  glBindTexture(GL_TEXTURE_2D, tex->texture);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER,
                  filter_funcs[mipmaps * NUM_FILTER_MODES + filter]);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, filter_funcs[filter]);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, wrap_modes[wrap_u]);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, wrap_modes[wrap_v]);
  glTexImage2D(GL_TEXTURE_2D, 0, internal_fmt, width, height, 0, internal_fmt,
               pixel_fmt, buffer);
#ifndef VITA
  if (mipmaps) {
    glGenerateMipmap(GL_TEXTURE_2D);
  }
#endif
  glBindTexture(GL_TEXTURE_2D, 0);

  return handle;
}

int r_height(struct render_backend *r) {
  return r->height;
}

int r_width(struct render_backend *r) {
  return r->width;
}

void r_destroy(struct render_backend *r) {
//  r_destroy_textures(r);

  free(r);
}

struct render_backend *r_create(int width, int height) {
  struct render_backend *r = calloc(1, sizeof(struct render_backend));

  r->width = width;
  r->height = height;

  r_create_textures(r);
  r_set_initial_state(r);

  return r;
}
