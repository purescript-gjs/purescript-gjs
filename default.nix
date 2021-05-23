{ pkgs ? import <nixpkgs> { } }:

let
  easy-ps = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "fbbb27c1afd51d729939a6a2006e954dbd844846";
    sha256 = "1kw9cqycrq456dipd5mq7c1ij6jl3d9ajlnba152db3qrw5wmrg0";
  }) { inherit pkgs; };

in pkgs.mkShell {
  buildInputs = [
    easy-ps.purs
    easy-ps.spago
    pkgs.gjs
    pkgs.gtk4
    pkgs.gnome3.gtk
    pkgs.gnome3.gobject-introspection
  ];
}
