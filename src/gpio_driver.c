#include <xc.h>
#include "gpio_driver.h"

void gpio_init(gpio_t *gpio,gpio_dir_e dir)
{
	if(dir == GPIO_INPUT)
	{
		*(gpio->tris) |= (1 << gpio->pin); //set as intput
	}
	else
	{
		*(gpio->tris) &= ~(1 << gpio->pin); //set as output
	}
}

void gpio_write(gpio_t *gpio,gpio_level_e level)
{
	if(level == GPIO_HIGH)
	{
 		*(gpio->lat) |= (1 << gpio->pin);//output high
	}
	else
	{
		*(gpio->lat) &= ~(1 << gpio->pin);//output low
	}
}

gpio_level_e gpio_read(gpio_t *gpio)
{
	if(*(gpio->port) &  (1 << gpio->pin))
	{
		return GPIO_HIGH;
	}
	return GPIO_LOW;
}

void gpio_toggle(gpio_t *gpio)
{
	*(gpio->lat) ^= (1 << gpio->pin);
}
