{ pkgs, ... }:
{
  programs.nixvim.extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "typr";
      src = pkgs.fetchFromGitHub {
        repo = "typr";
        rev = "db0f98f";
        owner = "nvzone";
        sha256 = "sha256-GEQylpk15ldirglHbXquPL9D++tS3YGg2P8h0SZa2D8=";
      };
    })
  ];
}
