{ pkgs, ... }:
{
	stylix = {
		enable = true;
		polarity = "light";
		autoEnable = false;
		# base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-light-medium.yaml";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-latte.yaml";
		cursor = {
			package = "${pkgs.catppuccin-cursors.macchiatoDark}";
			name = "Catppuccin Macchiato Dark";
			size = 24;
		};
	};
}
