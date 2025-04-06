{ pkgs, ... }:
{
  wayland.windowManager.river = {
    enable = true;
    settings = {
      border-width = 2;
      set-repeat = "50 300";
      default-layout = "rivertile";
      background-color = "0x1a1423";
      focus-follows-cursor = "always";
      spawn = [
        "swayosd-server"
        "exec ${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
      ];
      input = {
        "pointer-1267-12521-ELAN1205:00_04F3:30E9_Touchpad" = {
          tap = true;
          natural-scroll = true;
        };
      };
      map = {
        normal = {
          "Super Q" = "close";
          "Super+Shift X" = "exit";
          "Super C" = "spawn neovide";
          "Super W" = "spawn firefox";
          "Super Return" = "spawn foot";
          "Super ~" = "set-focused-tags 0";
          "Super Right" = "focus-vew next";
          "Super 1" = "set-focused-tags 1";
          "Super 2" = "set-focused-tags 2";
          "Super 3" = "set-focused-tags 3";
          "Super 4" = "set-focused-tags 4";
          "Super 5" = "set-focused-tags 5";
          "Super 6" = "set-focused-tags 6";
          "Super 7" = "set-focused-tags 7";
          "Super 8" = "set-focused-tags 8";
          "Super 9" = "set-focused-tags 9";
          "Super 0" = "set-focused-tags 10";
          "Super+Shift Right" = "swap next";
          "Super Left" = "focus-vew previous";
          "Super+Shift ~" = "set-view-tags 0";
          "Super+Shift 1" = "set-view-tags 1";
          "Super+Shift 2" = "set-view-tags 2";
          "Super+Shift 3" = "set-view-tags 3";
          "Super+Shift 4" = "set-view-tags 4";
          "Super+Shift 5" = "set-view-tags 5";
          "Super+Shift 6" = "set-view-tags 6";
          "Super+Shift 7" = "set-view-tags 7";
          "Super+Shift 8" = "set-view-tags 8";
          "Super+Shift 9" = "set-view-tags 9";
          "Super+Shift 0" = "set-view-tags 10";
          "Super+Shift Left" = "swap previous";
          "XF86MonBrightnessUp" = "spawn swayosd-client --brightness +5";
          "XF86MonBrightnessDown" = "spawn swayosd-client --brightness -5";
          "XF86AudioMute" = "spawn swayosd-client --output-volume mute-toggle";
          "XF86AudioMicMute" = "spawn swayosd-client --input-volume mute-toggle";
          "XF86AudioRaiseVolume" = "spawn swayosd-client --output-volume 5 --max-volume 150";
          "XF86AudioLowerVolume" = "spawn swayosd-client --output-volume -5 --max-volume 150";
        };
      };
    };
  };
}
