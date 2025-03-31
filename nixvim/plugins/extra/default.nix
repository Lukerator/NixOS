{ pkgs, ... }:
{
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    nvzone-typr
    nvzone-volt
    nvzone-menu
  ];
}
