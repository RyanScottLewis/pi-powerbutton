SCRIPT = src/pi-powerbutton
UNIT   = src/pi-powerbutton.service

SCRIPT_DEST = $(DESTDIR)/usr/bin
UNIT_DEST   = $(DESTDIR)/usr/lib/systemd/system

install:
	install -D -m 755 $(SCRIPT) $(SCRIPT_DEST)
	install -D -m 644 $(UNIT) $(UNIT_DEST)
	systemctl enable $(notdir $(UNIT))
	systemctl start $(notdir $(UNIT))

uninstall:
	systemctl stop $(notdir $(UNIT))
	systemctl disable $(notdir $(UNIT))
	rm $(UNIT_DEST)/$(notdir $(UNIT))
	rm $(SCRIPT_DEST)/$(notdir $(SCRIPT))

list:
	@echo "install      Install the script to the system"
	@echo "uninstall    Uninstall the script from the system"

