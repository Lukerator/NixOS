{ pkgs, ... }:
{
	stylix = {
		enable = true;
		polarity = "dark";
		autoEnable = false;
		# base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
	};
}
