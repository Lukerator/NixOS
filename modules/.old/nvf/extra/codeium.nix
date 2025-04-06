{ pkgs, ... }:
{
  programs.nvf.settings.config.vim.extraPlugins = with pkgs.vimPlugins; {
    codeium = {
      package = codeium-nvim;
      setup = "require('codeium').setup {}";
    };
  };
}
