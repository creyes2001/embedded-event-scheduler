#include "button_driver.h"

void button_init(button_t *btn, gpio_t *gpio,button_polarity_e polarity,uint8_t debounce_ticks)
{
	btn->gpio = gpio;
	btn->polarity = polarity;
	btn->state = BUTTON_RELEASED;
	btn->last_state = BUTTON_RELEASED;
	btn->debounce_cnt = 0;
	btn->debounce_ticks = debounce_ticks;
	btn->event = BUTTON_EVENT_NONE;

	gpio_init(btn->gpio,GPIO_INPUT);
}

void button_update(button_t *btn)
{
	button_state_e state;
	if(btn->polarity == BUTTON_ACTIVE_HIGH)
	{
		state = (gpio_read(btn->gpio)== GPIO_HIGH) ? BUTTON_PRESSED : BUTTON_RELEASED;	
	}
	else
	{
		state = (gpio_read(btn->gpio)== GPIO_HIGH) ? BUTTON_RELEASED : BUTTON_PRESSED; 	
	}
	
	if(state == btn->state)
	{
		btn->debounce_cnt = 0;
	}
	else{
		btn->debounce_cnt++;
		if(btn->debounce_cnt >= btn->debounce_ticks)
		{
			btn->last_state = btn->state;
			btn->state = state;

			if(btn->last_state == BUTTON_RELEASED  && btn->state == BUTTON_PRESSED)
			{
				btn->event = BUTTON_EVENT_PRESSED;
			}
			else if(btn->last_state == BUTTON_PRESSED && btn->state == BUTTON_RELEASED)
			{
				btn->event = BUTTON_EVENT_RELEASED;
			}
			btn->debounce_cnt = 0;
		}
	}
}

button_event_e button_get_event(button_t *btn)
{
	button_event_e event = btn->event;
	btn->event = BUTTON_EVENT_NONE;
	return event;
}
