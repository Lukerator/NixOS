{
  programs.nvf.settings.vim.autocomplete.blink-cmp = {
    enable = true;
    sourcePlugins = {
      lsp = {
        enable = true;
        package = "cmp-nvim-lsp";
        module = "nvim-lsp";
      };
      treesitter = {
        enable = true;
        package = "cmp-treesitter";
        module = "nvim-treesitter";
      };
    };
  };
}
