deps:
	git submodule init && git submodule update

packschematics:
	tar cvfz ./key_kicad_pro.tgz ./key/

pingdevice:
	sudo avrdude -c usbtiny -p attiny85

bootflash:
	sudo avrdude -c usbtiny -p attiny85 -U lfuse:w:0xd1:m -U hfuse:w:0xdd:m -U efuse:w:0xfe:m -B 20
	sudo avrdude -c usbtiny -p attiny85 -U flash:w:micronucleus/firmware/main.hex

programflash:
	./micronucleus/commandline/micronucleus /tmp/arduino_build_419877/tigerkey.ino.hex
