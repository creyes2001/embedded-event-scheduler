#include "config.h"
#include <xc.h>
#include "gpio_driver.h"
#include "led_driver.h"
#include "scheduler.h"
#include "timer0.h"
#include "interrupts.h"

gpio_t gpio_led0 = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 0
};

gpio_t gpio_led1 = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 1
};

gpio_t gpio_led2 = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 2
};

gpio_t button = {
	.tris = &TRISB,
	.port = &PORTB,
	.lat = &LATB,
	.pin = 0
};

led_t led0 = {
	.gpio = &gpio_led0,
	.polarity = ACTIVE_HIGH
};

led_t led1 = {
	.gpio = &gpio_led1,
	.polarity = ACTIVE_LOW
};

led_t led2 = {
	.gpio = &gpio_led2,
	.polarity = ACTIVE_HIGH
};

void __interrupt () isr (void)
{
	if(INTCONbits.TMR0IF)
	{
		timer0_reload();
		scheduler_tick();
		INTCONbits.TMR0IF = 0;
	}
}

void led_task0(void)
{
	led_toggle(&led0);
}

void led_task1(void)
{
	led_toggle(&led2);
}


int main(void)
{
	led_init(&led0);
	led_init(&led1);
	led_init(&led2);
	gpio_init(&button,GPIO_INPUT);

	scheduler_init();
	timer0_init();
	timer0_start();

	enable_gi();	//enable global and peripherial inteerupts

	scheduler_add_task(&led_task0,500);
	scheduler_add_task(&led_task1,200);
	while(1)
	{
		scheduler_run();
	}
	return 1;
}
