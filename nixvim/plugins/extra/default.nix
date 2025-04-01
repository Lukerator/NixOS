{ pkgs, ... }:
{
  imports = [
    ./flake.nix
    ./leetcode.nix
    ./ufo.nix
  ];
  programs.nixvim.extraPlugins = with pkgs.vimPlugins; [
    leetcode-nvim
    nvim-ufo
    nvzone-typr
    nvzone-volt
    nvzone-menu
    promise-async
  ];
}
