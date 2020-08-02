# Install on Arch Linux
install:
	sudo cp ro /usr/share/X11/xkb/symbols/
	sudo cp evdev.lst /usr/share/X11/xkb/rules/
	sudo cp evdev.xml /usr/share/X11/xkb/rules/

uninstall:
	sudo cp original/symbols/ro /usr/share/X11/xkb/symbols/
	sudo cp original/rules/evdev.lst /usr/share/X11/xkb/rules/
	sudo cp original/rules/evdev.xml /usr/share/X11/xkb/rules/

set-layout:
	gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'ro+rode')]"

get-layout:
	gsettings get org.gnome.desktop.input-sources sources