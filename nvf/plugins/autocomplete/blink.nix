{
  programs.nvf.settings.vim.autocomplete.blink-cmp = {
    enable = true;
    sourcePlugins = {
      lsp = {
        enable = true;
        package = "cmp-nvim-lsp";
      };
      path = {
        enable = true;
        package = "cmp-path";
      };
    };
  };
}
