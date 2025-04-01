{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.awesomeNeovimPlugins; [
      exercism-nvim
      utils-nvim
    ];
    extraConfigLua = # lua
      "
        require('exercism').setup({
          default_language = 'cpp',
        })
      ";
  };
}
