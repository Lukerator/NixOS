{ pkgs, ... }:
{
	config.stylix = {
		image = ./catppuccin-macchiato.png;
		cursor = {
			package = "${pkgs.catppuccin-cursors.macchiatoLight}";
			name = "Catppuccin Macchiato Light";
			size = 26;
		};
		targets = {
			foot.enable = true;
			zathura.enable = true;
			hyprland = {
				enable = true;
				hyprpaper.enable = true;
			};
			firefox = {
				colorTheme.enable = true;
				profileNames = [ "Luke" ];
			};
		};
	};
}
