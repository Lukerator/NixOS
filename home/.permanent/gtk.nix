{ pkgs, ... }:
{
	gtk.cursorTheme = {
		size = 26;
		name = "Catppuccin Macchiato Light";
		package = "${pkgs.catppuccin-cursors.macchiatoLight}";
	};
}
