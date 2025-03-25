{ lib, ... }:
{
  programs.rofi = {
    enable = false;
    theme."*" = {
      background-color = lib.mkForce "#fbf1c7";
      foreground-color = lib.mkForce "#4f3829";
      border-color = lib.mkForce "#45707a";
      width = 1024;
    };
  };
}
