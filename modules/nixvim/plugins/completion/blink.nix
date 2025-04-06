{
  programs.nixvim.plugins = {
    blink-compat = {
      enable = true;
      settings.impersonate_nvim_cmp = true;
    };
    blink-cmp = {
      enable = true;
      settings = {
        completion.ghost_text.enabled = true;
        snippets = {
          active.__raw = # lua
            "function(filter) return vim.snippet.active(filter) end";
          expand.__raw = # lua
            "function(snippet) vim.snippet.expand(snippet) end";
          jump.__raw = # lua
            "function(direction) vim.snippet.jump(direction) end";
        };
        sources = {
          providers = {
            codeium = {
              async = true;
              enabled = true;
              max_items = 10;
              name = "codeium";
              module = "blink.compat.source";
            };
          };
          default = [
            "lsp"
            "path"
            "buffer"
            "codeium"
            "snippets"
          ];
        };
      };
    };
  };
}
