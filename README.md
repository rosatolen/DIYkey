# DIYkey

The DIYkey a hardware token that stores one static password. This repo will
contain all the information you need if you want to build your own token.

# Hardware Setup Instructions

## Prerequisite Materials

One of our goals is to keep the cost of materials low. Initially we created the
first prototype with around 7 USD but the goal was to make large batch assembly
cost as close to $1 as possible.

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

```
WARNING

You should not solder the ATTiny85 to a permaproto board before programming it
unless you have clips to easily help you install software once it has been
placed.

```

Use the below image to connect the hardware materials. Double check that the diode polarity is correct.

![schematic](https://github.com/rosatolen/DIYkey/blob/master/schematic.jpeg)

# Software Setup Instructions

## Prerequisite Materials

1. [Adafruit AVR Programmer](https://www.adafruit.com/product/46) or [Sparkfun AVR Programmer](https://www.sparkfun.com/products/11801)

## Instructions

1. Install the following dependencies:
    1. Arduino with the DigisparkKeyboard libraries
    1. avrdude
    1. make autotools
1. Pull this repository
1. Run `make deps`
1. `cd micronucleus/firmware/`
1. `make`
1. Return to the main DIYkey directory
1. Connect your DIYkey to a Attiny85 programmer and run `make bootflash`
1. `cd micronucleus/commandline/`
1. `make`
1. Install avrdude for your operating system
1. Search through your system for the arduino DigisparkKeyboard directory
```
find / -name DigisparkKeyboard 2>/dev/null
```
1. Open the usbconfig.h file in that directory
1. Change the usbconfig.h file in DigiKeyboard folder for Ardunio
1. Change the value for ATTiny85 USB\_CFG\_DMINUS\_BIT from 3 to 0
1. Change the value for ATTiny85 USB\_CFG\_DPLUS\_BIT from 4 to 1
1. Open the `arduino\_code/DIYkey/DIYkey program` in Arduino
1. Edit the preferences of Arduino to show verbose compilation output
1. Compile the program and record where the .hex file for this program is stored
1. Put the path to the .hex file in the main Makefile under the programflash command
1. Plug the DIYkey into one of your USB ports and run `make programflash`
