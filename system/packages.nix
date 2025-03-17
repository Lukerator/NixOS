{ pkgs, inputs, ... }:
{
	environment.systemPackages = with pkgs; [
		astal.astal4
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
		inputs.astal.packages.${system}.default
	];
}
