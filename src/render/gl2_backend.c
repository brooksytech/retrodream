#include "core/core.h"
#include "host/host.h"
#include "render/render_backend.h"

#ifdef VITA
#include <vitaGL.h>
#endif

// Shaders
#include "ta_f.h"
#include "ta_v.h"

uint16_t *gIndices;
float *gVertexBuffer;
uint16_t *gIndicesPtr;
float *gVertexBufferPtr;

#define UNIF_SHADE_DECAL   1.0f
#define UNIF_SHADE_MODUL   2.0f
#define UNIF_SHADE_DECAL_A 3.0f
#define UNIF_SHADE_MODUL_A 4.0f

static float shade_mode = UNIF_SHADE_MODUL;
static float has_texture = 1.0f;
static float alpha_skip = 1.0f;
static float tex_alpha_skip = 1.0f;
static float has_offset_color = 1.0f;
static float has_alpha_test = 1.0f;

enum texture_map {
  MAP_DIFFUSE
};

enum uniform_attr {
  UNIFORM_DIFFUSE,
  UNIFORM_VIDEO_SCALE,
  UNIFORM_ALPHA_REF,
  UNIFORM_ALPHA_SKIP,
  UNIFORM_TEX_ALPHA_SKIP,
  UNIFORM_HAS_TEXTURE,
  UNIFORM_ALPHA_TEST,
  UNIFORM_SHADE_MODE,
  UNIFORM_HAS_OFFSET_COLOR,
  UNIFORM_NUM_UNIFORMS
};

static const char *uniform_names[] = {
    "u_diffuse", "u_video_scale", "u_alpha_ref", "alpha_skip",
	"tex_alpha_skip", "has_texture", "alpha_test", "shade_mode",
	"offset_color"
};

enum shader_attr {
  /* shade attributes are mutually exclusive, so they don't use unique bits */
  ATTR_SHADE_DECAL = 0x0,
  ATTR_SHADE_MODULATE = 0x1,
  ATTR_SHADE_DECAL_ALPHA = 0x2,
  ATTR_SHADE_MODULATE_ALPHA = 0x3,
  ATTR_SHADE_MASK = 0x3,
  /* remaining attributes can all be combined together */
  ATTR_TEXTURE = 0x4,
  ATTR_IGNORE_ALPHA = 0x8,
  ATTR_IGNORE_TEXTURE_ALPHA = 0x10,
  ATTR_OFFSET_COLOR = 0x20,
  ATTR_ALPHA_TEST = 0x40,
  ATTR_DEBUG_DEPTH_BUFFER = 0x80
};

struct shader_program {
  GLuint prog;
  GLuint vertex_shader;
  GLuint fragment_shader;
  GLint loc[UNIFORM_NUM_UNIFORMS];

  /* the last global uniforms bound to this program */
  uint64_t uniform_token;
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
  struct shader_program ta_program;

  /* offscreen framebuffer for blitting raw pixels */
  GLuint pixel_fbo;
  GLuint pixel_texture;

  /* texture cache */
  struct texture textures[MAX_TEXTURES];

  /* global uniforms that are constant for every surface rendered between a call
     to begin_surfaces and end_surfaces */
  uint64_t uniform_token;
  float uniform_video_scale[4];
};

#include "render/ta.glsl"
#include "render/ui.glsl"

#ifndef GL_NONE
#define GL_NONE 0
#endif

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
    GL_NONE,     /* DEPTH_NONE */
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
    GL_NONE,  /* CULL_NONE */
    GL_FRONT, /* CULL_FRONT */
    GL_BACK   /* CULL_BACK */
};

static GLenum blend_funcs[] = {GL_NONE,
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

static int r_compile_shader(const char *source, GLenum shader_type,
                            GLuint *shader) {
	size_t sourceLength = source == ta_f ? size_ta_f : size_ta_v;

	*shader = glCreateShader(shader_type);
	glShaderBinary(1, shader, 0, source, sourceLength);

	return 1;
}

static void r_destroy_program(struct shader_program *program) {
  if (program->vertex_shader) {
    glDeleteShader(program->vertex_shader);
  }

  if (program->fragment_shader) {
    glDeleteShader(program->fragment_shader);
  }

  if (program->prog) {
    glDeleteProgram(program->prog);
  }
}

static int r_compile_program(struct render_backend *r,
                             struct shader_program *program) {
	memset(program, 0, sizeof(*program));
	program->prog = glCreateProgram();

	if (!r_compile_shader(ta_v, GL_VERTEX_SHADER, &program->vertex_shader)) {
		r_destroy_program(program);
		return 0;
	}

	glAttachShader(program->prog, program->vertex_shader);

    if (!r_compile_shader(ta_f, GL_FRAGMENT_SHADER, &program->fragment_shader)) {
		r_destroy_program(program);
		return 0;
	}

	glAttachShader(program->prog, program->fragment_shader);

	vglBindPackedAttribLocation(program->prog, 0, "attr_xyz",          3, GL_FLOAT,                         0, sizeof(float) * 7);
	vglBindPackedAttribLocation(program->prog, 1, "attr_texcoord",     2, GL_FLOAT,         sizeof(float) * 3, sizeof(float) * 7);
	vglBindPackedAttribLocation(program->prog, 2, "attr_color",        4, GL_UNSIGNED_BYTE, sizeof(float) * 5, sizeof(float) * 7);
	vglBindPackedAttribLocation(program->prog, 3, "attr_offset_color", 4, GL_UNSIGNED_BYTE, sizeof(float) * 6, sizeof(float) * 7);

	glLinkProgram(program->prog);

	for (int i = 0; i < UNIFORM_NUM_UNIFORMS; i++) {
		program->loc[i] = glGetUniformLocation(program->prog, uniform_names[i]);
	}

	return 1;
}

static void r_destroy_shaders(struct render_backend *r) {
  r_destroy_program(&r->ta_program);
}

static void r_create_shaders(struct render_backend *r) {
  if (!r_compile_program(r, &r->ta_program)) {
    LOG_FATAL("failed to compile ui shader");
  }
}

static void r_destroy_textures(struct render_backend *r) {
  glDeleteTextures(1, &r->white_texture);

  for (int i = 0; i < MAX_TEXTURES; i++) {
    struct texture *tex = &r->textures[i];

    if (!tex->texture) {
      continue;
    }

    glDeleteTextures(1, &tex->texture);
  }
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
#ifndef VITA
  glBindTexture(GL_TEXTURE_2D, 0);
#endif
}

static void r_set_initial_state(struct render_backend *r) {
  glDepthMask(1);
  glDisable(GL_DEPTH_TEST);

  glEnable(GL_CULL_FACE);
  glCullFace(GL_BACK);

  glDisable(GL_BLEND);
  
  glEnable(GL_TEXTURE_2D);
}

static struct shader_program *r_get_ta_program(struct render_backend *r,
                                               const struct ta_surface *surf) {
												   LOG_INFO("r_get_ta_program called");
  int idx = (int)surf->params.shade;
  if (surf->params.texture) {
    idx |= ATTR_TEXTURE;
  }
  if (surf->params.ignore_alpha) {
    idx |= ATTR_IGNORE_ALPHA;
  }
  if (surf->params.ignore_texture_alpha) {
    idx |= ATTR_IGNORE_TEXTURE_ALPHA;
  }
  if (surf->params.offset_color) {
    idx |= ATTR_OFFSET_COLOR;
  }
  if (surf->params.alpha_test) {
    idx |= ATTR_ALPHA_TEST;
  }

  struct shader_program *program = &r->ta_program;
  
  glUseProgram(program->prog);

  if ((idx & ATTR_SHADE_MASK) == ATTR_SHADE_DECAL) {
    shade_mode = UNIF_SHADE_DECAL;
  } else if ((idx & ATTR_SHADE_MASK) == ATTR_SHADE_MODULATE) {
    shade_mode = UNIF_SHADE_MODUL;
  } else if ((idx & ATTR_SHADE_MASK) == ATTR_SHADE_DECAL_ALPHA) {
    shade_mode = UNIF_SHADE_DECAL_A;
  } else if ((idx & ATTR_SHADE_MASK) == ATTR_SHADE_MODULATE_ALPHA) {
    shade_mode = UNIF_SHADE_MODUL_A;
  }
  glUniform1f(program->loc[UNIFORM_SHADE_MODE], shade_mode);

  if (idx & ATTR_TEXTURE) has_texture = 1.0f;
  else has_texture = 0.0f;
  glUniform1f(program->loc[UNIFORM_HAS_TEXTURE], has_texture);
  
  if (idx & ATTR_IGNORE_ALPHA) alpha_skip = 1.0f;
  else alpha_skip = 0.0f;
  glUniform1f(program->loc[UNIFORM_ALPHA_SKIP], alpha_skip);
  
  if (idx & ATTR_IGNORE_TEXTURE_ALPHA) tex_alpha_skip = 1.0f;
  else tex_alpha_skip = 0.0f;
  glUniform1f(program->loc[UNIFORM_TEX_ALPHA_SKIP], tex_alpha_skip);
  
  if (idx & ATTR_OFFSET_COLOR) has_offset_color = 1.0f;
  else has_offset_color = 0.0f;
  glUniform1f(program->loc[UNIFORM_HAS_OFFSET_COLOR], has_offset_color);
  
  if (idx & ATTR_ALPHA_TEST) has_alpha_test = 1.0f;
  else has_alpha_test = 0.0f;
  glUniform1f(program->loc[UNIFORM_ALPHA_TEST], has_alpha_test);

  return program;
}

void r_end_ta_surfaces(struct render_backend *r) {}

uint16_t ta_draw_indices_num = 0;

void r_draw_ta_surface(struct render_backend *r,
                       const struct ta_surface *surf) {
  glDepthMask(!!surf->params.depth_write);
LOG_INFO("r_draw_ta_surfaces called");
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

  struct shader_program *program = r_get_ta_program(r, surf);

  glUniform4fv(program->loc[UNIFORM_VIDEO_SCALE], 1, r->uniform_video_scale);

  float alpha_ref = surf->params.alpha_ref / 255.0f;
  glUniform1f(program->loc[UNIFORM_ALPHA_REF], alpha_ref);

  glUniform1i(program->loc[UNIFORM_DIFFUSE], MAP_DIFFUSE);

  if (surf->params.texture) {
    struct texture *tex = &r->textures[surf->params.texture];
    r_bind_texture(r, MAP_DIFFUSE, tex->texture);
  }
  
  vglDrawObjects(GL_TRIANGLES, ta_draw_indices_num, GL_FALSE);
}

void r_begin_ta_surfaces(struct render_backend *r, int video_width,
                         int video_height, const struct ta_vertex *verts,
                         int num_verts, const uint16_t *indices,
                         int num_indices) {
							 LOG_INFO("r_begin_ta_surfaces called");
  /* uniforms will be lazily bound for each program inside of r_draw_surface */
  r->uniform_video_scale[0] = 2.0f / (float)video_width;
  r->uniform_video_scale[1] = -1.0f;
  r->uniform_video_scale[2] = -2.0f / (float)video_height;
  r->uniform_video_scale[3] = 1.0f;
  
  memcpy(gVertexBuffer, verts, sizeof(float) * 7 * num_verts);
  vglVertexAttribPointerMapped(0, gVertexBuffer);
  vglVertexAttribPointerMapped(1, gVertexBuffer);
  vglVertexAttribPointerMapped(2, gVertexBuffer);
  vglVertexAttribPointerMapped(3, gVertexBuffer);
  gVertexBuffer += 7 * num_verts;
  
  memcpy(gIndices, indices, sizeof(uint16_t) * num_indices);
  vglIndexPointerMapped(gIndices);
  gIndices += num_indices;
  
  ta_draw_indices_num = num_indices;
}

void r_draw_pixels(struct render_backend *r, const uint8_t *pixels, int x,
                   int y, int width, int height) {
  glBindTexture(GL_TEXTURE_2D, r->pixel_texture);
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, pixels);
  glUseProgram(0);
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
									  
	LOG_INFO("r_create_texture called");
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
  glBindTexture(GL_TEXTURE_2D, 0);
#endif

  return handle;
}

int r_height(struct render_backend *r) {
  return r->height;
}

int r_width(struct render_backend *r) {
  return r->width;
}

void r_destroy(struct render_backend *r) {
  r_destroy_shaders(r);
  r_destroy_textures(r);

  free(r);
}

struct render_backend *r_create(int width, int height) {
  struct render_backend *r = calloc(1, sizeof(struct render_backend));

  r->width = width;
  r->height = height;

  r_create_textures(r);
  r_create_shaders(r);
  r_set_initial_state(r);
  
  gVertexBufferPtr = (float*)malloc(0x1800000);
  gIndicesPtr = (uint16_t*)malloc(0x600000);
  gVertexBuffer = gVertexBufferPtr;
  gIndices = gIndicesPtr;
  LOG_INFO("r_create returning 0x%08X", r);
  return r;
}
