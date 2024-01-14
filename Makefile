.PHONY: test
test:
	spago bundle --output build --module Test.Main --outfile build/test.js
	gjs -c "import('./build/test.js').then(m => m.main()).catch(e => console.trace(e))"

test-gtk4:
	spago bundle --output build --module Test.Gtk4 --outfile build/test-gtk4.js
	gjs -c "import('./build/test-gtk4.js').then(m => m.main())"

test-gtk:
	spago bundle --output build --module Test.Gtk --outfile build/test-gtk.js
	gjs -c "import('./build/test-gtk.js').then(m => m.main())"

test-dbus:
	spago bundle --output build --module Test.DBus --outfile build/test-dbus.js
	gjs -c "import('./build/test-dbus.js').then(m => m.main())"

test-gio:
	spago bundle --output build --module Test.Gio --outfile build/test-gio.js
	gjs -c "import('./build/test-gio.js').then(m => m.main())"

.PHONY: codegen
codegen:
	pushd codegen; cabal run -O0
