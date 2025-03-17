{ pkgs, ... }:
{
	home.packages = with pkgs; [
		python314Packages.pygobject3
		python314Packages.dbus-python
		python314Packages.jedi-language-server
        ];
	programs.eww = {
		enable = true;
		configDir = ../../eww;
		package = pkgs.eww-wayland;
		enableZshIntegration = true;
	};
}
