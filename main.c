#include "config.h"
#include <xc.h>
#include "gpio_driver.h"
#define _XTAL_FREQ 20000000

gpio_t led = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 0
};

gpio_t led1 = {
	.tris = &TRISD,
	.port = &PORTD,
	.lat = &LATD,
	.pin = 1
};

gpio_t button = {
	.tris = &TRISB,
	.port = &PORTB,
	.lat = &LATB,
	.pin = 0
};


int main(void)
{
	gpio_init(&led,GPIO_OUTPUT);
	gpio_init(&led1,GPIO_OUTPUT);
	gpio_init(&button,GPIO_INPUT);
	while(1)
	{
		gpio_toggle(&led);
		__delay_ms(500);
		
		if(gpio_read(&button) == GPIO_HIGH)
		{
			gpio_write(&led1,GPIO_HIGH);
		}
		else
		{
			gpio_write(&led1,GPIO_LOW);
		}

	}
	return 1;
}
