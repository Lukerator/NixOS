{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		gcc
		git
		gh
		home-manager
		lf
		lsd
		lua
		neovide
		polkit_gnome
		python3
		ripgrep
		typst
	];
}
