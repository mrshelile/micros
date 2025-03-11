# PIC16F887 MicroC School Assignments

This repository contains a collection of school assignments developed for the PIC16F887 microcontroller using the mikroC PRO for PIC compiler and the C programming language. The assignments cover various fundamental topics including I/O handling, timer management, analog-to-digital conversion (ADC), UART communication, and more.

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Hardware Requirements](#hardware-requirements)
- [Software Requirements](#software-requirements)
- [Project Structure](#project-structure)
- [Compilation and Programming](#compilation-and-programming)
- [Usage](#usage)
- [Code Explanation](#code-explanation)
- [Troubleshooting](#troubleshooting)
- [Credits and License](#credits-and-license)

---

## Overview

This project is designed to help students learn the basics of embedded systems programming with PIC microcontrollers. Each assignment demonstrates a specific feature or peripheral of the PIC16F887, offering hands-on experience with configuring and programming the device using mikroC.

---

## Features

- **Digital I/O**: Learn how to configure and control digital input and output pins.
- **Timer Interrupts**: Implement and manage timer interrupts for periodic tasks.
- **Analog-to-Digital Conversion (ADC)**: Read analog sensor data using the ADC module.
- **UART Communication**: Set up serial communication for debugging or interfacing with other devices.
- **PWM Control**: Generate PWM signals for motor control or LED dimming.
- **Modular Code Design**: Separate modules for easier understanding and reusability.

---

## Hardware Requirements

- **PIC16F887 Microcontroller**
- **PIC Programmer** (e.g., PICkit 3 or similar)
- Breadboard and connecting wires
- Additional peripherals (e.g., LCD display, push buttons, sensors, etc.) as required by specific assignments

---

## Software Requirements

- **mikroC PRO for PIC IDE**: The development environment used to write, compile, and program the assignments.
- **C Programming Knowledge**: Basic understanding of C syntax and structure.
- **PIC Microcontroller Fundamentals**: Familiarity with PIC architecture and peripheral configuration.

---

## Project Structure

- **main.c**  
  Contains the main function with system initialization and the main application loop.

- **adc.c / adc.h**  
  Modules for initializing and handling the ADC peripheral.

- **uart.c / uart.h**  
  Functions for setting up UART communication and handling serial data.

- **timer.c / timer.h**  
  Timer configuration and interrupt service routines to manage periodic tasks.

- **lcd.c / lcd.h**  
  Functions to interface with an LCD display (if applicable).

- **config.h**  
  Configuration settings including oscillator settings, fuses, and other device-specific configurations.

Each module is commented to explain its purpose and functionality, ensuring the code is clear and maintainable.

---

## Compilation and Programming

1. **Open the Project:**  
   Launch mikroC PRO for PIC and open the project files.

2. **Verify Configuration:**  
   Check `config.h` for correct device settings, including oscillator configuration and fuse settings specific to the PIC16F887.

3. **Build the Project:**  
   Use the Build option in the IDE to compile the project and generate the HEX file.

4. **Program the Device:**  
   Connect your PIC programmer (e.g., PICkit 3) to the PIC16F887 and load the HEX file onto the microcontroller.

---

## Usage

- **Initialization:**  
  On power-up, the microcontroller initializes all configured peripherals.

- **Operation:**  
  The main loop runs continuously, handling sensor readings, user inputs
