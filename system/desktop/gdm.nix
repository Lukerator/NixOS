{
	services = {
		libinput = {
			enable = true;
			touchpad.tapping = true;
		};
		xserver = {
			enable = true;
			displayManager.gdm = {
				enable = true;
				wayland = true;
			};
		};
	};
}
