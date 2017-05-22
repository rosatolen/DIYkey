pack:
	tar cvfz ./key_kicad_pro.tgz ./key/

ispcon:
	sudo avrdude -c usbtiny -p attiny85

bflash:
	sudo avrdude -c usbtiny -p attiny85 -U lfuse:w:0xd1:m -U hfuse:w:0xdd:m -U efuse:w:0xfe:m -B 20
	sudo avrdude -c usbtiny -p attiny85 -U flash:w:micronucleus/firmware/main.hex

pflash:
	./micronucleus/commandline/micronucleus /tmp/arduino_build_217628/tigerkey.ino.hex
