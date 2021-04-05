{ pkgs ? import <nixpkgs> {} }:

let
  easy-ps = import (
    pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "9b56211d";
      sha256 = "1xkbvcjx5qyz5z7qjampxnhpvvg5grv5ikqpjr1glrfs1lvjff49";
    }
  ) {
    inherit pkgs;
  };

in
pkgs.mkShell {
  buildInputs = [easy-ps.purs easy-ps.spago pkgs.gjs ];
}
