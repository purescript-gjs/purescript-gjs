.PHONY: test
test:
	spago bundle-app -m Test.Main --to build/test.js --then "gjs build/test.js"

test-gtk4:
	spago bundle-app -m Test.Gtk4 --to build/test-gtk4.js --then "gjs build/test-gtk4.js"

test-gtk:
	spago bundle-app -m Test.Gtk --to build/test-gtk.js --then "gjs build/test-gtk.js"

test-dbus:
	spago bundle-app -m Test.DBus --to build/test-dbus.js --then "gjs build/test-dbus.js"

test-gio:
	spago bundle-app -m Test.Gio --to build/test-gio.js --then "gjs build/test-gio.js"

.PHONY: codegen
codegen:
	pushd codegen; cabal run -O0
