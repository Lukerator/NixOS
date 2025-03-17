{ pkgs, ... }:
{
	wayland.windowManager.sway = {
		enable = true;
		checkConfig = false;
		package = pkgs.swayfx;
		extraOptions = [ "--unsupported-gpu" ];
		extraConfig = ''
			corner_radius 10
			focus_follows_mouse no
			floating_modifier Mod4 normal
			bindgesture swipe:3:up workspace next
			bindgesture swipe:3:left workspace next
			bindgesture swipe:3:down workspace prev
			bindgesture swipe:3:right workspace prev
		'';
		config = {
			bars = [];
			focus.followMouse = "yes";
			defaultWorkspace = "workspace number 1";
			startup = [{ command = "swayosd-server"; }];
			gaps = {
				inner = 5;
				outer = 5;
			};
			floating = {
				border = 4;
				modifier = "Mod4";
			};
			window = {
				border = 4;
				titlebar = false;
			};
			input = {
				"type:touchpad" = {
					tap = "enabled";
					natural_scroll = "enabled";
				};
				"type:keyboard" = {
					xkb_layout = "ro";
					repeat_rate = "50";
					repeat_delay = "300";
				};
			};
			output = {
				eDP-1 = {
					scale = "1";
					pos = "0 0";
					subpixel = "rgb";
					adaptive_sync = "on";
					scale_filter = "smart";
					mode = "1920x1080@144Hz";
					# bg = "~/.config/nixos/stylix/gruvbox-light.png fill #fbf1c7";
					bg = "~/.config/nixos/stylix/gruvbox-dark.png fill #282828";
				};
			};
			keybindings = {
				"Mod4+q" = "kill";
				"Mod4+c" = "exec neovide";
				"Mod4+Shift+r" = "reload";
				"Mod4+w" = "exec firefox";
				"Mod4+Return" = "exec foot";
				"Mod4+Shift+x" = "exec sway exit";

				"Mod4+Up" = "focus up";
				"Mod4+Down" = "focus down";
				"Mod4+Left" = "focus left";
				"Mod4+Right" = "focus right";

				"Mod4+Shift+Up" = "move up";
				"Mod4+Shift+Down" = "move down";
				"Mod4+Shift+Left" = "move left";
				"Mod4+Shift+Right" = "move right";

				"Mod4+1" = "workspace number 1";
				"Mod4+2" = "workspace number 2";
				"Mod4+3" = "workspace number 3";
				"Mod4+4" = "workspace number 4";
				"Mod4+5" = "workspace number 5";
				"Mod4+6" = "workspace number 6";
				"Mod4+7" = "workspace number 7";
				"Mod4+8" = "workspace number 8";
				"Mod4+9" = "workspace number 9";
				"Mod4+0" = "workspace number 10";
				"Mod4+minus" = "scratchpad show";

				"Mod4+Shift+1" = "move container to workspace number 1";
				"Mod4+Shift+2" = "move container to workspace number 2";
				"Mod4+Shift+3" = "move container to workspace number 3";
				"Mod4+Shift+4" = "move container to workspace number 4";
				"Mod4+Shift+5" = "move container to workspace number 5";
				"Mod4+Shift+6" = "move container to workspace number 6";
				"Mod4+Shift+7" = "move container to workspace number 7";
				"Mod4+Shift+8" = "move container to workspace number 8";
				"Mod4+Shift+9" = "move container to workspace number 9";
				"Mod4+Shift+0" = "move container to workspace number 10";
				"Mod4+Shift+minus" = "move scratchpad";

				"Mod4+f" = "fullscreen";
				"Mod4+space" = "floating toggle";
				"Mod4+Shift+f" = "focus mode_toggle";

				"XF86MonBrightnessUp" = "exec swayosd-client --brightness +5";
				"XF86MonBrightnessDown" = "exec swayosd-client --brightness -5";
				"XF86AudioMute" = "exec swayosd-client --output-volume mute-toggle";
				"XF86AudioMicMute" = "exec swayosd-client --input-volume mute-toggle";
				"XF86AudioRaiseVolume" = "exec swayosd-client --output-volume 5 --max-volume 150";
				"XF86AudioLowerVolume" = "exec swayosd-client --output-volume -5 --max-volume 150";

				"Control+Shift+Down" = "exec swaymsg output eDP-1 transform 180";
				"Control+Shift+Left" = "exec swaymsg output eDP-1 transform 270";
				"Control+Shift+Right" = "exec swaymsg output eDP-1 transform 90";
				"Control+Shift+Up" = "exec swaymsg output eDP-1 transform normal";
			};
		};
	};
}
