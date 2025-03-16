{ pkgs, ... }:
{
	stylix = {
		enable = true;
		polarity = "dark";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
		cursor = {
			name = "apple-cursor";
			package = pkgs.apple-cursor;
			size = 16;
		};
	};
}
