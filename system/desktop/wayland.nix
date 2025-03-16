{ pkgs, ... }:
{
	environment.sessionVariables.NIXOS_OZONE_WL = "1";
	environment.defaultPackages = [ pkgs.wl-clipboard ];
	services.libinput.enable = true;
}
