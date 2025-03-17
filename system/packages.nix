{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		eww-wayland
		gcc
		git
		gh
		home-manager
		lf
		lsd
		lua
		neovide
		python3
		ripgrep
		typst
	];
}
