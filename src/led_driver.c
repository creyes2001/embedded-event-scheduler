#include "led_driver.h"

void led_init(led_t *led)
{
	gpio_init(led->gpio,GPIO_OUTPUT);
	led->state = LED_OFF;
	led_set(led,led->state);
}

void led_set(led_t *led,led_state_e state)
{

	gpio_level_e gpio_level;
	led->state = state;

	if(led->polarity == ACTIVE_HIGH)
	{
		gpio_level = (state == LED_ON) ? GPIO_HIGH : GPIO_LOW;
	}
	else
	{
		gpio_level = (state == LED_ON) ? GPIO_LOW : GPIO_HIGH;
	}

	gpio_write(led->gpio,gpio_level);
}

void led_toggle(led_t *led)
{
	led_state_e state = led->state;
	if(state == LED_ON)
	{
		state = LED_OFF;
	}
	else
	{
		state = LED_ON;
	}
	led_set(led,state);
}
