{ pkgs, ... }:
{
  config.vim.extraPlugins.floaterm.package = pkgs.vimPlugins.vim-floaterm;
}
