#include "config.h"
#include <xc.h>
#include "gpio_driver.h"
#include "led_driver.h"
#define _XTAL_FREQ 20000000

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

int main(void)
{
	led_init(&led0);
	led_init(&led1);
	led_init(&led2);
	gpio_init(&button,GPIO_INPUT);
	while(1)
	{
		led_toggle(&led0);
		__delay_ms(500);
		led_toggle(&led1);
		__delay_ms(500);
	if(gpio_read(&button)== GPIO_LOW)
	{
		led_set(&led2,LED_OFF);	
	}
	else
	{
		led_set(&led2,LED_ON);
	}
	}
	return 1;
}
