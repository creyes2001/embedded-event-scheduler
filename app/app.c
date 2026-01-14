#include "app.h"
#include "event.h"
#include "led_driver.h"

extern led_t led1;

void app_init(void)
{
	led_init(&led1);
}

void app_task(void)
{
	event_e ev = event_pop(); 
	
	switch(ev)
	{
		case EVENT_BUTTON_RELEASED:
			led_toggle(&led1);
			break;

		default:
			break;
	}
}
