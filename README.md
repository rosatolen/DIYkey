# DIYkey

The DIYkey a hardware token that stores one static password. This repo will
contain all the information you need if you want to build your own token.

# Hardware Setup Instructions

## Prerequisite Materials:

One of our goals is to keep the cost of materials low. Initially we created the
first prototype with around 7 USD but the goal was to make large batch assembly
cost as close to $1 as possible for people who live in the United States,
Ecuador, or Brazil.

You will need:

1. 1 Breadboard or a protoboard and a soldering station if you feel comfortable with the assembly: [Option 1](https://www.adafruit.com/category/124) or [Option 2](https://www.sparkfun.com/categories/149)
1. 1 [ATTiny85](https://www.sparkfun.com/products/9378)
1. 2 [Resistors  68 Ohms](https://www.radioshack.com/products/radioshack-68-ohm-1-2w-5-carbon-film-resistor-pk-5)
1. 1 [Resistor 1500 Ohms (1200 Ohms works)](https://www.digikey.com/product-detail/en/yageo/CFR-25JB-52-1K5/1.5KQBK-ND/132)
1. 1 [Resistor  330 Ohms](https://www.sparkfun.com/products/11507)
1. 2 [Zener Diodes](https://www.sparkfun.com/products/10301)
1. 1 [LED](https://www.radioshack.com/products/radioshack-5mm-green-led)
1. 1 [Male USB Type A connector](https://www.sparkfun.com/products/437)
1. Some Connecting Wire (if needed)

## Instructions

[image here]

```
WARNING

You should not solder the ATTiny85 to a permaproto board before programming it
unless you have clips to easily program it once it has placed.

```

# Software Setup Instructions

## Prerequisite Materials:

1. [Adafruit AVR Programmer](https://www.adafruit.com/product/46) or [Sparkfun AVR Programmer](https://www.sparkfun.com/products/11801)

## Instructions

(We're updating these instructions. See issue #4)

1. Install the following dependencies:
    a. Arduino with the DigisparkKeyboard libraries
    b. avrdude
    c. make autotools
2. Pull this repository
3. Run `make deps`
4. `cd micronucleus/firmware/`
5. `make`
6. Return to the main DIYkey directory
7. Connect your DIYkey to a Attiny85 programmer and run `make bootflash`
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
16. Open the `arduino\_code/DIYkey/DIYkey program` in Arduino
17. Edit the preferences of Arduino to show verbose compilation output
18. Compile the program and record where the .hex file for this program is stored
19. Put the path to the .hex file in the main Makefile under the programflash command
20. Plug the DIYkey into one of your USB ports and run `make programflash`
