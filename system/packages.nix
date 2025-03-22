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
		lutris
		neovide
		polkit_gnome
		python3
		ripgrep
		xdg-user-dirs
		xdg-user-dirs-gtk
		xfce.thunar
		xfce.thunar-archive-plugin
		xfce.thunar-volman
		typst
		zathura
	];
}
