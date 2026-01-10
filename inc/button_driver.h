#ifndef BUTTON_H
#define BUTTON_H
#include <stdint.h>
#include "gpio_driver.h"

typedef enum{
	ACTIVE_LOW,
	ACTIVE_HIGH
}button_polarity_e;

typedef enum{
	BUTTON_RELEASED,
	BUTTON_PRESSED
}button_state_e;

typedef enum{
	BUTTON_EVENT_NONE,
	BUTTON_EVENT_PRESSED,
	BUTTON_EVENT_RELEASED
}button_event_e;

typedef struct{
	gpio_t *gpio;				//hardware
	button_polarity_e polarity;	//ACTIVE_LOW / ACTIVE_HIGH
	button_state_e cs_state;	//current debounced state
	button_state_e ls_state;	//last debounced state
	uint8_t debounce_cnt;		//current counter
	uint8_t debounced_ticks;	//thresold		
}button_t;

void button_init(button_t *btn, 
				 gpio_t *gpio,
				 button_polarity_e polarity,
				 uint8_t debounce_ticks);
void button_update(button_t *btn);
button_event_e button_get_event(button_t *btn);

#endif
