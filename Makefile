NAME   = pi-powerbutton
SCRIPT = src/$(NAME)
UNIT   = src/$(NAME).service

SCRIPT_DEST = $(DESTDIR)/usr/bin/$(NAME)
UNIT_DEST   = $(DESTDIR)/usr/lib/systemd/system/$(NAME).service

install:
	install -D -m 755 $(SCRIPT) $(SCRIPT_DEST)
	install -D -m 644 $(UNIT) $(UNIT_DEST)

uninstall:
	rm $(UNIT_DEST) $(SCRIPT_DEST)

list:
	@echo "install      Install the script to the system"
	@echo "uninstall    Uninstall the script from the system"

