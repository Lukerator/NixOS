{ pkgs, ... }:
{
  imports = [ ./ufo.nix ];
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    nvim-ufo
    nvzone-typr
    nvzone-volt
    nvzone-menu
    promise-async
  ];
}
