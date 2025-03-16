{
	boot.loader = {
		systemd-boot.enable = false;
		efi.canTouchEfiVariables = true;
		grub = {
			enable = true;
			efiSupport = true;
			useOSProber = true;
			devices = [ "nodev" ];
			extraEntries = ''
				menuentry "Reboot" { reboot }
				menuentry "Shut Down" { halt }
			'';
		};
	};
}
