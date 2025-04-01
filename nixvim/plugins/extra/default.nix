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
      name = "utils";
      src = pkgs.fetchFromGitHub {
        rev = "cf370b3";
        repo = "utils.nvim";
        owner = "2KAbhishek";
        sha256 = "";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "exercism";
      src = pkgs.fetchFromGitHub {
        rev = "e123320";
        owner = "2KAbhishek";
        repo = "exercism.nvim";
        sha256 = "sha256-ysuDkCJ+SUap9q1AVmJHg984B3yHiyT2Jq0uTZ0wtuM=";
      };
    })
  ];
}
