{ inputs, pkgs, ... }:
{
  home.packages = [
    (inputs.nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [ ../nvf ];
    }).neovim
  ];
}
