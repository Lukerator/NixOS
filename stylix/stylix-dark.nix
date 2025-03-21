{ pkgs, ... }:
{
	stylix = {
		enable = true;
		polarity = "dark";
		autoEnable = false;
		# base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
		targets = {
			gtk.enable = true;
			qt.enable = true;
		};
		cursor = {
			package = "${pkgs.catppuccin-cursors.macchiatoLight}";
			name = "Catppuccin Macchiato Light";
			size = 24;
		};
	};
}
