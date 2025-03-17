{ pkgs, ... }:
{
	programs.eww = {
		enable = true;
		configDir = ../../eww;
		package = pkgs.eww-wayland;
		enableZshIntegration = true;
	};
}
