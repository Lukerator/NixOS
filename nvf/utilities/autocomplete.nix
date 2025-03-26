{
  programs.nvf.settings.config.vim.autocomplete.blink-cmp = {
    enable = true;
    setupOpts = {
      keymap.preset = "super-tab";
      sources.default = [
        "lsp"
        "path"
        "buffer"
        "snippets"
      ];
    };
  };
}
