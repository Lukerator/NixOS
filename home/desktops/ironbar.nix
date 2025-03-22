{
	programs.ironbar = {
		enable = true;
		style = ''
			.background = "rgba(0, 0, 0, 0)";
		'';
		config = {
			height = 20;
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
					type = "upower";
					format = "{percentage}% {time_remaining}";
				}
				{
					type = "volume";
					format = "{icon} {percentage}%";
					max_volume = 150;
					icons = {
						volume_high = " ";
						volume_medium = " ";
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
