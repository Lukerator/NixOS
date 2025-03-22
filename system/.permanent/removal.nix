{ pkgs, ... }:
{
	documentation.nixos.enable = false;
	services.xserver.excludePackages = [ pkgs.xterm ];
	environment.extraSetup = ''
		rm $out/share/applications/cups.desktop
	'';
}
