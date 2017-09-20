prefix=/usr

install:
	install -m 0755 bin/pamageli $(prefix)/bin
	install -m 0755 bin/pamageli-launcher-gui $(prefix)/bin
	install -m 0644 share/applications/pamageli.desktop $(prefix)/share/applications
	install -m 0644 share/icons/pamageli.svg $(prefix)/share/icons
	mkdir -p $(prefix)/share/pamageli
	for l in fr
	do
		install -m 755 share/pamageli/$l.lang $(prefix)/share/pamageli
	done

uninstall:
	rm -f $(prefix)/bin/pamageli
	rm -f $(prefix)/bin/pamageli-launcher-gui
	rm -f $(prefix)/share/applications/pamageli.desktop
	rm -f $(prefix)/share/icons/pamageli.svg
	rm -rf $(prefix)/share/pamageli
