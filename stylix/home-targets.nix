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
			gtk = {
				enable = true;
				extraCss = ''
:root { --standalone-color-oklab: min(l, 0.5) a b; --accent-color: oklab(from var(--accent-bg-color) var(--standalone-color-oklab)); --destructive-color: oklab(from var(--destructive-bg-color) var(--standalone-color-oklab)); --success-color: oklab(from var(--success-bg-color) var(--standalone-color-oklab)); --warning-color: oklab(from var(--warning-bg-color) var(--standalone-color-oklab)); --error-color: oklab(from var(--error-bg-color) var(--standalone-color-oklab)); }
@import '../gtk-3.0/libadwaita.css';
@import '../gtk-3.0/libadwaita-tweaks.css';
				'';
			};
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
