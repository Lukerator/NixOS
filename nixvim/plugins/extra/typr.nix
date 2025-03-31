{ pkgs, ... }:
{
  programs.nixvim.extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "typr";
      src = pkgs.fetchFromGitHub {
        repo = "typr";
        rev = "db0f98f";
        owner = "nvzone";
        sha256 = "";
      };
    })
  ];
}
