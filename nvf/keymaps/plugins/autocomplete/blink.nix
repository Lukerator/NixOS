{
  config.vim.autocomplete.blink-cmp.sourceOpts.keymap = {
    preset = "none";
      "<CR>" = [ "accept" "fallback" ];
      "<Tab>" = [ "snippet_forward" "select_next" "fallback" ];
      "<S-Tab>" = [ "snippet_backward" "select_prev" "fallback" ];
  };
}
