{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.awesomeNeovimPlugins; [
      exercism-nvim
    ];
    extraConfigLua = # lua
      "
        require('exercism').setup({
          default_language = 'cpp',
        })
      ";
  };
}
