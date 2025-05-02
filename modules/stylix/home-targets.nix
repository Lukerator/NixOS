{ pkgs, ... }:
{
  config.stylix = {
    image = ./wallpapers/tokyo-night.png;
    targets = {
      qt.enable = true;
      gtk.enable = true;
      fuzzel.enable = true;
      ghostty.enable = true;
      zathura.enable = true;
      spicetify.enable = true;
      hyprland = {
        enable = true;
        hyprpaper.enable = true;
      };
      firefox = {
        enable = true;
        profileNames = [ "Luke" ];
      };
    };
  };
}
