{ pkgs, ... }:
{
	stylix = {
		enable = true;
		polarity = "light";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-light-medium.yaml";
		cursor = {
			name = "apple-cursor";
			package = pkgs.apple-cursor;
			size = 16;
		};
	};
}
