{ pkgs, ... }:
{
  config.stylix = {
    image = ./wallpapers/tokyo-nico.jpg;
    cursor = {
      size = 26;
      name = "Catppuccin Macchiato Light";
      package = "${pkgs.catppuccin-cursors.macchiatoLight}";
    };
    targets = {
      qt.enable = true;
      gtk.enable = false;
      ghostty.enable = true;
      zathura.enable = true;
      hyprland = {
        enable = true;
        hyprpaper.enable = true;
      };
      firefox = {
        enable = false;
        colorTheme.enable = true;
        profileNames = [ "Luke" ];
      };
    };
  };
}
