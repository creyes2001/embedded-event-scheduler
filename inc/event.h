#ifndef EVENT_H
#define EVENT_H

#include <stdint.h>

typedef enum{
	EVENT_BUTTON_NONE,
	EVENT_BUTTON_PRESSED,
	EVENT_BUTTON_RELEASSED
}event_e;

void event_init(void);
uint8_t event_push(event_e ev);
event_t event_pop(void);

#endif
