{ pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
		fuzzel
		git
		gh
		home-manager
		lf
		lsd
		neovide
		ripgrep
	];
}
