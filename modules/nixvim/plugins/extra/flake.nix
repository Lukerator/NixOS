{ pkgs, ... }:
{
  programs.nixvim = {
    extraConfigLua = "require('exercism-nvim').setup(add_default_keybindings = false)";
    extraPlugins = with pkgs.awesomeNeovimPlugins; [
      exercism-nvim
    ];
  };
}
