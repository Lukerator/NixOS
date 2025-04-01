{ pkgs, ... }:
{
  imports = [
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
    (pkgs.vimUtils.buildVimPlugin {
      name = "exercism.nvim";
      src = pkgs.fetchFromGitHub {
        rev = "e123320";
        owner = "2KAbhishek";
        repo = "exercism.nvim";
        hash = "";
      };
    })
  ];
}
