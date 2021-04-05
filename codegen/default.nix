{ nixpkgs ? import <nixpkgs> { } }:
let
  hsPkgs = nixpkgs.haskellPackages.override {
    overrides = self: super: {
      relude = nixpkgs.haskell.lib.overrideCabal super.relude {
        version = "1.0.0.1";
        sha256 = "0cw9a1gfvias4hr36ywdizhysnzbzxy20fb3jwmqmgjy40lzxp2g";
      };
    };
  };
  drv = hsPkgs.callCabal2nix "codegen" ./. { };
  shellDrv = hsPkgs.shellFor {
    withHoogle = false;
    packages = p: [ drv ];
    buildInputs = with nixpkgs.haskellPackages; [
      hlint
      cabal-install
      haskell-language-server
      nixpkgs.gobjectIntrospection
    ];

  };
in if nixpkgs.lib.inNixShell then shellDrv else drv
