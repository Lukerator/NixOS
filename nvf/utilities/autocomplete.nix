{
  programs.nvf.settings.config.vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;
    sourcePlugins.codeium = {
      enable = true;
      package = "codeium";
      module = "codeium-nvim";
    };
  };
}
