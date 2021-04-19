.PHONY: test
test:
	spago bundle-app -m Test.Main --to build/test.js --then "gjs build/test.js"

test-gtk:
	spago bundle-app -m Test.Gtk --to build/test-gtk.js --then "gjs build/test-gtk.js"

.PHONY: codegen
codegen:
	pushd codegen; cabal run -O0
