#include "event.h"

#define EVENT_QUEUE_SIZE 10

static volatile event_e queue[EVENT_QUEUE_SIZE];
static volatile uint8_t head; 
static volatile uint8_t tail;

void event_init(void)
{
	head = 0;
	tail = 0;
}

uint8_t event_push(event_e ev)
{
	uint8_t next = (head + 1) % EVENT_QUEUE_SIZE;
	if(next == tail)
	{
		return 0; //queue full
	}

	queue[head] = ev;
	head = next;
	return 1;
}

event_e event_pop(void)
{
	if(head == tail)
	{
		return EVENT_NONE; //queue empty
	}

	event_e ev = queue[tail];
	tail = (tail + 1) % EVENT_QUEUE_SIZE;
	return ev;
}
