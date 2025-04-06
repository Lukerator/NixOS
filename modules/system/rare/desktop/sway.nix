{ pkgs, ... }:
{
  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };
  environment.systemPackages = with pkgs; [
    swaybg
    swayidle
    swayimg
    swaylock-effects
    swaynotificationcenter
    swayosd
    swayr
  ];
}
