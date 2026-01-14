#include "config.h"
#include <xc.h>
#include "gpio_driver.h"
#include "scheduler.h"
#include "timer0.h"
#include "interrupts.h"
#include "event.h"
#include "led_driver.h"
#include "button_driver.h"
#include "app.h"

gpio_t gpio_led1 = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 0
};

gpio_t button1 = {
	.tris = &TRISB,
	.port = &PORTB,
	.lat = &LATB,
	.pin = 0
};

led_t led1 = {
	.gpio = &gpio_led1,
	.polarity = ACTIVE_HIGH
};

button_t btn1;

void __interrupt () isr (void)
{
	if(INTCONbits.TMR0IF)
	{
		timer0_reload();
		scheduler_tick();
		INTCONbits.TMR0IF = 0;
	}
}


void button_task(void)
{
	button_update(&btn1);

	button_event_e bev = button_get_event(&btn1);

	if(bev == BUTTON_EVENT_PRESSED)
	{
		event_push(EVENT_BUTTON_PRESSED);
	}
	else if(bev == BUTTON_EVENT_RELEASED)
	{
		event_push(EVENT_BUTTON_RELEASED);
	}
}

int main(void)
{
	button_init(&btn1,&button1,BUTTON_ACTIVE_LOW,3);
	app_init();
	scheduler_init();
	timer0_init();
	timer0_start();

	enable_gi();	//enable global and peripherial inteerupts

	scheduler_add_task(&button_task,10);
	scheduler_add_task(&app_task,5);
	while(1)
	{
		scheduler_run();
	}
	return 1;
}
