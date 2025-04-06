{
  config.vim.autocomplete.blink-cmp.setupOpts.keymap = {
    preset = "none";
      "<CR>" = [ "accept" "fallback" ];
      "<Tab>" = [ "snippet_forward" "select_next" "fallback" ];
      "<S-Tab>" = [ "snippet_backward" "select_prev" "fallback" ];
  };
}
