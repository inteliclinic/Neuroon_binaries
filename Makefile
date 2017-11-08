ifeq ($(OS),Windows_NT)
  OPENOCD = openocd -f ../interface/stlink-v2-1.cfg -f ../target/nrf51.cfg -f openocd.cnf
else
  OPENOCD = openocd -f interface/stlink-v2-1.cfg -f target/nrf51.cfg -f openocd.cnf
endif

JLINK=JLinkExe

flash_os_old_neuroon:
	$(OPENOCD) -c "neuroon2_0_40_4 ()"

flash_jlink_old_neuroon:
	$(JLINK) old_neuroon.jlink

flash_jlink_deprecated_neuroon:
	$(JLINK) deprecated_neuroon.jlink
