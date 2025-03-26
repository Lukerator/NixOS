{ lib, pkgs, ... }:
{
  programs.nvf.settings.config.vim.languages.haskell = {
    enable = true;
    lsp.package = [ (lib.getExe pkgs.haskellPackages.haskell-language-server) "--debug" ];
  };
}
