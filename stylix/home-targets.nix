{ pkgs, ... }:
{
	config.stylix = {
		image = ./catppuccin-macchiato.png;
		cursor = {
			size = 26;
			name = "Catppuccin Macchiato Light";
			package = "${pkgs.catppuccin-cursors.macchiatoLight}";
		};
		targets = {
			qt.enable = true;
			gtk.enable = true;
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
