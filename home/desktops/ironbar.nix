{
	programs.ironbar = {
		enable = true;
		config = {
			margin.top = 10;
			position = "top";
			anchor_to_edges = true;
			icon_theme = "Adwaita";
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
				{
					type = "focused";
					show_icon = false;
					show_title = true;
				}
			];
		};
	};
}
