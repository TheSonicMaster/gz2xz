# gz2xz 1.0.0 - Copyright (C) 2021 The Sonic Master.
#
# This is GPL-3.0+ licensed free software. A copy of the license can be"
# obtained from <https://www.gnu.org/licenses/gpl-3.0.en.html>."
#
# Specify where you want to install gz2xz (default is /usr/local/bin).
INSTALL_DIR=/usr/local/bin

all:
	@echo "Run 'make install' to install gz2xz."
	@echo
	@echo "The default installation directory is /usr/local/bin."
	@echo "If you prefer somewhere else, set INSTALL_DIR as necessary, e.g."
	@echo "'make INSTALL_DIR=/path/to/custom/installation/directory install'."
	@echo
	@echo "To uninstall, run 'make uninstall'. INSTALL_DIR also works here, like"
	@echo "it did in 'make install'."

install:
	install -Dm755 gz2xz $(INSTALL_DIR)/gz2xz

uninstall:
	rm -f $(INSTALL_DIR)/gz2xz
