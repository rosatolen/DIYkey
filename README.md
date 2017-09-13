The following are missing and are in the process of being added:
1. Instructions on how to assemble a key with the below materials
1. Instructions on how to compile the code and flash it to the device

# Tiger Key || Llave de Tigre

Make a hardware key that contains passwords yourself for around $8.

## Goal:
Bring the cost of materials down to $1-5.

## Materials:
1. 1 Permanent Prototype Board
1. 1 ATTiny85
1. 2 Resistors  68 Ohms
1. 1 Resistor 1500 Ohms (1200 Ohms works)
1. 1 Resistor  330 Ohms
1. 1 LED
1. 2 General Zenner Diodes
1. Some Connecting Wire (if needed)

# Setup Instructions

TODO: explain what these steps do

1. Install the following dependencies:
    a. Arduino with the DigisparkKeyboard libraries
    b. avrdude
    c. make autotools
    d. 
2. Pull this repository
3. Run `git submodule init && git submodule update`
4. `cd micronucleus/firmware/`
5. `make`
6. Return to the main tigerkey directory
7. Connect your TigerKey to a Attiny85 programmer and run `make bootflash`
8. `cd micronucleus/commandline/`
9. `make`
10. Install avrdude for your operating system. TODO: provide links for different OSs
11. Search through your system for the arduino DigisparkKeyboard directory.
```
find / -name DigisparkKeyboard 2>/dev/null
```
12. Open the usbconfig.h file in that directory
13. Change the usbconfig.h file in DigiKeyboard folder for Ardunio
14. Change the value for ATTiny85 USB\_CFG\_DMINUS\_BIT from 3 to 0
15. Change the value for ATTiny85 USB\_CFG\_DPLUS\_BIT from 4 to 1
16. Open the `arduino\_code/tigerkey/tigerkey.ino program` in Arduino
17. Compile the program and record where the .hex file for this program is stored
