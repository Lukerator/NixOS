{ pkgs, ... }:
{
  config.stylix = {
    image = ./wallpapers/tokyo-night.png;
    cursor = {
      size = 26;
      name = "Catppuccin Macchiato Light";
      package = "${pkgs.catppuccin-cursors.macchiatoLight}";
    };
    targets = {
      qt.enable = true;
      gtk.enable = false;
      nixvim.enable = true;
      ghostty.enable = true;
      zathura.enable = true;
      hyprland = {
        enable = true;
        hyprpaper.enable = true;
      };
      firefox = {
        enable = true;
        colorTheme.enable = true;
        profileNames = [ "Luke" ];
      };
    };
  };
}
