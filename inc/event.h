#ifndef EVENT_H
#define EVENT_H

#include <stdint.h>

typedef enum{
	EVENT_NONE,
	EVENT_BUTTON_PRESSED,
	EVENT_BUTTON_RELEASED
}event_e;

void event_init(void);
uint8_t event_push(event_e ev);
event_e event_pop(void);

#endif
