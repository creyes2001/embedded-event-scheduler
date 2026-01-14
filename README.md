# Embedded Event Scheduler (PIC18F4550)


##  Overview

This project implements a small embedded framework for the **PIC18F4550** using
XC8 and bare-metal C.  
It demonstrates layered driver design, a cooperative scheduler, and
event-driven input handling.

The system integrates:
- GPIO Hardware Abstraction Layer (HAL)
- LED driver with polarity handling
- Button driver with software debouncing
- Cooperative task scheduler (1 ms tick)
- Event queue for decoupled input handling

---

## Target Hardware

- **MCU:** PIC18F4550
- **Clock:** 20 MHz
- **Toolchain:** XC8
- **Programmer:** PICkit (pk2cmd)
- **OS:** Linux

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

## Timing

- **System tick:** 1 ms (Timer0 ISR)
- **Button debounce:** configurable in ticks
- **Tasks:** executed periodically by scheduler

---

## Example Behavior

- Button press generates `BUTTON_EVENT_PRESSED`
- Button release generates `BUTTON_EVENT_RELEASED`
- Events are pushed to the event queue
- Application logic consumes events and controls LEDs

---
## Build & Flash

```bash
make all
make flash
