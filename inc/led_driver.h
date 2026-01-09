#ifndef LED_H
#define LED_H

#include "gpio_driver.h"

typedef enum{
	ACTIVE_LOW,
	ACTIVE_HIGH
}led_polarity_e;

typedef enum{
	LED_OFF,
	LED_ON
}led_state_e;

typedef struct{
	gpio_t *gpio;
	led_polarity_e polarity;
	led_state_e  state;
}led_t;

void led_init(led_t *led);
void led_set(led_t *led,led_state_e state);
void led_toggle(led_t *led);

#endif
