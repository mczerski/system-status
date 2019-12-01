
PREFIX ?= /usr/local
INITDIR_SYSTEMD = /etc/systemd/system
BINDIR = $(PREFIX)/bin

RM = rm
INSTALL = install -p
INSTALL_PROGRAM = $(INSTALL) -m755
INSTALL_SCRIPT = $(INSTALL) -m755
INSTALL_DATA = $(INSTALL) -m644
INSTALL_DIR = $(INSTALL) -d

Q = @

help:
	$(Q)echo "install - install scripts"
	$(Q)echo "uninstall - uninstall scripts"

install:
	$(Q)echo -e '\033[1;32mInstalling main scripts...\033[0m'
	$(INSTALL_DIR) "$(BINDIR)"
	$(INSTALL_PROGRAM) system-status.sh "$(BINDIR)/system-status.sh"
	$(INSTALL_PROGRAM) run_system_status.sh "$(BINDIR)/run_system_status.sh"

uninstall:
	$(RM) "$(BINDIR)/system-status.sh"
	$(RM) "$(BINDIR)/run_system_status.sh"

.PHONY: install uninstall
