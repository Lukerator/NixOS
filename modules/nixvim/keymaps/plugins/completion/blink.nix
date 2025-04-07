{
  
plugins.blink-cmp.settings.keymap = {
    preset = "none";
    "<Tab>" = [
      "snippet_forward"
      "select_next"
      "fallback"
    ];
    "<S-Tab>" = [
      "snippet_backward"
      "select_prev"
      "fallback"
    ];
    "<CR>" = [
      "accept"
      "fallback"
    ];
  };
}
