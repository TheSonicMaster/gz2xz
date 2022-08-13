# gz2xz 1.1.0 - Copyright (C) 2021-2022 The Sonic Master.

# This is GPL-3.0+ licensed free software. A copy of the license can be"
# obtained from <https://www.gnu.org/licenses/gpl-3.0.en.html>."

# Specify where you want to install gz2xz (default is /usr/local/bin).
INSTALL_DIR=/usr/local/bin
MAN_DIR=/usr/local/share/man

all:
	@echo "Run 'make install' to install gz2xz."
	@echo
	@echo "See README.md for more information, including about a custom"
	@echo "installation directory, vendor installations, and uninstalling."

install:
	install -Dm755 gz2xz $(INSTALL_DIR)/gz2xz
	install -Dm644 gz2xz.1 $(MAN_DIR)/man1/gz2xz.1

install-vendored: install
	$(INSTALL_DIR)/gz2xz --install-symlinks
	sed -i 's/#GZ2XZ_VENDORED/GZ2XZ_VENDORED/' $(INSTALL_DIR)/gz2xz

uninstall:
	rm -f $(INSTALL_DIR)/gz2xz
	rm -f $(MAN_DIR)/man1/gz2xz.1
