{
  programs.nvf.settings.vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;
    setupOpts = {
      fuzzy.implementation = "prefer_rust_with_warning";
      sources.default = [ "lsp" "path" "buffer" "snippets" ];
      keymap = {
        preset = "enter";
        "<Up>" = [ "select_prev" "fallback" ];
        "<Tab>" = [ "select_next" "fallback" ];
        "<Down>" = [ "select_next" "fallback" ];
        "<S-Tab>" = [ "select_prev" "fallback" ];
        "<C-b>" = [ "scroll_documentation_up" "fallback" ];
        "<C-f>" = [ "scroll_documentation_down" "fallback" ];
        "<C-k>" = [ "show_signature" "hide_signature" "fallback" ];
      };
    };
  };
}
