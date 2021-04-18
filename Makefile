.PHONY: test
test:
	spago bundle-app -m Test.Main --to build/test.js --then "gjs build/test.js"

.PHONY: codegen
codegen:
	pushd codegen; cabal run -O0
