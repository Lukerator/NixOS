{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		aseprite
		brightnessctl
		catppuccin-gtk
		gcc
		git
		gh
		home-manager
		lf
		lsd
		lua
		lutris
		neovide
		polkit_gnome
		python3
		ripgrep
		swayimg
		swayosd
		tlp
		xfce.thunar
		xfce.thunar-archive-plugin
		xfce.thunar-volman
		typst
		zathura
	];
}
