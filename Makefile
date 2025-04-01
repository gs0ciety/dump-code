PREFIX ?= /usr/local

install:
	@echo "Installing dump-code at $(PREFIX)/bin ..."
	install -Dm755 bin/dump-code $(PREFIX)/bin/dump-code
	@echo "dump-code installed correctly at $(PREFIX)/bin/dump-code"

uninstall:
	@echo "Uninstalling dump-code from $(PREFIX)/bin ..."
	rm -f $(PREFIX)/bin/dump-code
	@echo "dump-code uninstalled."
