{ pkgs, ... }:
{
  programs.nixvim.extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "typr";
      src = pkgs.fetchFromGithub {
        repo = "typr";
        rev = "db0f98f";
        owner = "nvzone";
      };
    })
  ];
}
