SCRIPT = src/pi-powerbutton
UNIT   = src/pi-powerbutton.service

SCRIPT_DEST = $(DESTDIR)/usr/bin
UNIT_DEST   = $(DESTDIR)/usr/lib/systemd/system

install:
	@echo install -D -m 755 $(SCRIPT) $(SCRIPT_DEST)
	@echo install -D -m 644 $(UNIT) $(UNIT_DEST)
	@echo systemctl enable $(notdir $(UNIT))
	@echo systemctl start $(notdir $(UNIT))

uninstall:
	@echo systemctl stop $(notdir $(UNIT))
	@echo systemctl disable $(notdir $(UNIT))
	@echo rm $(UNIT_DEST)/$(notdir $(UNIT))
	@echo rm $(SCRIPT_DEST)/$(notdir $(SCRIPT))

list:
	@echo "install      Install the script to the system"
	@echo "uninstall    Uninstall the script from the system"

