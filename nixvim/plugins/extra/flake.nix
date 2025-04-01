{ inputs, pkgs, ... }:
{
  overlays = [ inputs.awesome-neovim-plugins.overlays.default ];
  programs.nixvim = {
    extraPlugins = with pkgs.awesomeNeovimPlugins; [
      exercism-nvim
    ];
    extraConfigLua = # lua
      "
        require('exercism-nvim').setup()
      ";
  };
}
