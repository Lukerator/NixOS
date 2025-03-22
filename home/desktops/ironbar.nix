{
	programs.ironbar = {
		enable = false;
		style = ''
			.background = #00000000;
			#bar.background = #00000000;
		'';
		config = {
			height = 20;
			position = "top";
			anchor_to_edges = true;
			icon_theme = "Adwaita";
			margin = {
				top = 10;
				left = 20;
				right = 20;
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
