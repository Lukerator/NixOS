{
  programs.nixvim.plugins = {
    blink-compat.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
        appearance.nerd_font_variant = "normal";
        completion = {
          documentation.window.border = "round";
          menu.border = "round";
          ghost_text.enabled = true;
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
