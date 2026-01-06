# Embedded Event Scheduler (PIC18F4550)


##  Overview

This project manages LED states based on button-generated events using a cooperative task scheduler.

---

##  Modules 
- gpio_driver: provides hardware abstraction to configure and access GPIO pins
- led_driver: controls LED outputs through the GPIO driver
- button_driver: detects button state changes and reports them as logical events
- timer0: configures and provides a periodic time base using hardware timer 0
- scheduler: executes registered tasks based on the system time base
- interrupts: configures and enables or disables global and peripheral interrupts
- event: stores and provides access to button-generated events
- app: implements the application state machine using events and drivers


---
