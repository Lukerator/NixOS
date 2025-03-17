{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		eww-wayland
		gcc
		git
		gh
		home-manager
		libnotify
		lf
		lsd
		lua
		neovide
		python3
		ripgrep
		typst
	];
}
