{
  programs.nvf.settings.vim.autocomplete.blink-cmp = {
    enable = true;
    sourcePlugins = {
      lsp = {
        enable = true;
        package = "cmp-nvim-lsp";
        module = "nvim-lsp";
      };
      path = {
        enable = true;
        package = "cmp-path";
      };
      treesitter = {
        enable = true;
        package = "cmp-treesitter";
        module = "nvim-treesitter";
      };
    };
  };
}
