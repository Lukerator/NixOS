{
  programs.nixvim.plugins = {
    blink-compat.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
        signature.enabled = true;
        appearance.nerd_font_variant = "normal";
        completion = {
          menu.border = "round";
          ghost_text.enabled = true;
          accept.auto_brackets.enabled = true;
          documentation.window.border = "round";
        };
        sources = {
          compat = [
            "codeium"
          ];
          providers = {
            path = { };
            lsp = {
              fallbacks = [ ];
            };
            buffer = {
              score_offset = -7;
            };
            snippets = {
              max_items = 10;
              min_word_length = 3;
            };
          };
        };
      };
    };
  };
}
