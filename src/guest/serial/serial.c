#include "guest/serial/serial.h"
#include "guest/dreamcast.h"

struct serial {
  struct device;
  void *userdata;
  getchar_cb getchar_serial;
  putchar_cb putchar_serial;
};

static int serial_init(struct device *dev) {
  struct serial *serial = (struct serial *)dev;
  return 1;
}

void serial_putchar(struct serial *serial, int c) {
  serial->putchar_serial(serial->userdata, c);
}

int serial_getchar(struct serial *serial) {
  return serial->getchar_serial(serial->userdata);
}

void serial_destroy(struct serial *serial) {
  dc_destroy_device((struct device *)serial);
}

struct serial *serial_create(struct dreamcast *dc, void *userdata,
                             getchar_cb getchar_func, putchar_cb putchar_func) {
  struct serial *serial =
      dc_create_device(dc, sizeof(struct serial), "serial", &serial_init, NULL);
  serial->userdata = userdata;
  serial->getchar_serial = getchar_func;
  serial->putchar_serial = putchar_func;
  return serial;
}
