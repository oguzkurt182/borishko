PREFIX ?= /usr
SYSCONFDIR ?= /etc
MANDIR ?= $(PREFIX)/share/man

all:
	@echo Run \'make install\' to install borishko.

install:
	@gcc -o borishko borishko.c
	@echo 'Making directories...'
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(SYSCONFDIR)/borishko

	@echo 'Installing binaries...'
	@sed "s|CONFDIR|$(SYSCONFDIR)/borishko|g" < borishko > $(DESTDIR)$(PREFIX)/bin/borishko
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/borishko

	@echo 'installed borishko'

uninstall:
	@echo 'Removing files...'
	@rm -rf $(DESTDIR)$(PREFIX)/bin/borishko
	@rm -rf $(DESTDIR)$(SYSCONFDIR)/borishko
//grabbed from neofetch "https://github.com/dylanaraps/neofetch/"
