# ruby 2.5.0 or higher
#gcc 
# make

{ pkgs ? import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz";
  }) {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ruby_3_3
    pkgs.gcc14
    pkgs.gnumake
  ];
}
