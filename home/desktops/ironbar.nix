{
	programs.ironbar = {
		enable = true;
		config = {
			position = "top";
			anchor_to_edges = true;
			icon_theme = "Adwaita";
			margin = {
				top = 10;
				left = 10;
				right = 10;
			};
			start = [
				{
					type = "workspaces";
					all_monitors = true;
					name_map = {
						"1" = "1";
						"2" = "2";
						"3" = "3";
						"4" = "4";
						"5" = "5";
						"6" = "6";
						"7" = "7";
						"8" = "8";
						"9" = "9";
						"10" = "10";
					};
				}
			];
			center = [
				{
					type = "focused";
					show_icon = false;
					show_title = true;
				}
			];
			end = [
				{
					type = "volume";
					format = "{icon} {volume}%";
					max_volume = 150;
					icons = {
						volume_high = " ";
						volume_low = " ";
						muted = " ";
					};
				}
				{
					type = "clock";
				}
			];
		};
	};
}
