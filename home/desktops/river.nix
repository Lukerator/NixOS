{
	wayland.windowManager.river = {
		enable = true;
		settings = {
			border-width = 2;
			set-repeat = "50 300";
			default-layout = "rivertile";
			background-color = "0x2b2d52";
			focus-follows-cursor = "always";
			input = {
				"pointer-1267-12521-ELAN1205:00_04F3:30E9_Touchpad" = {
					tap = true;
					natural-scroll = true;
				};
			};
			map = {
				normal = {
					"Super Q" = "close";
					"Super+Shift X" = "exit";
					"Super W" = "spawn firefox";
					"Super Return" = "spawn foot";
					"Super Right" = "focus-vew next";
					"Super+Shift Right" = "swap next";
					"Super Left" = "focus-vew previous";
					"Super+Shift Left" = "swap previous";
				};
			};
		};
	};
}
