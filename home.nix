{ config, pkgs, ... }:

{
  imports = [
	./configs/main.nix
	./packages/main.nix
  ];
  nixpkgs.overlays = [ (import ./overlays/main.nix) ];

  home = {
    username = "cgilli";
    homeDirectory = "/home/cgilli";
    keyboard.layout = "fr";
  };
  home.stateVersion = "21.05";
}
