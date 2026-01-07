#ifndef GPIO_H
#define GPIO_H

#include <stdint.h>

typedef struct{
	volatile uint8_t *port;
	volatile uint8_t *tris;
	volatile uint8_t *lat;
	uint8_t pin;
}gpio_t;

typedef enum{
	GPIO_OUTPUT,
	GPIO_INPUT
}gpio_dir_e;

typedef enum{
	GPIO_LOW,
	GPIO_HIGH
}gpio_level_e;

void gpio_init(gpio_t *gpio,gpio_dir_e dir);
void gpio_write(gpio_t *gpio,gpio_level_e level);
gpio_level_e gpio_read(gpio_t *gpio);
void gpio_toggle(gpio_t *gpio);

#endif
