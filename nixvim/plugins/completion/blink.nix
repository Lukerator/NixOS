{
  programs.nixvim.plugins = {
    blink-compat = {
      enable = true;
      settings.impersonate_nvim_cmp = true;
    };
    blink-cmp = {
      enable = true;
      settings = {
      snippets = {
        active.__raw = "function(filter) return vim.snippet.active(filter) end";
        expand.__raw = "function(snippet) vim.snippet.expand(snippet) end";
        jump.__raw = "function(direction) vim.snippet.jump(direction) end";
      };
      sources = {
          providers = {
            codeium = {
              enabled = true;
              max_items = 10;
              name = "codeium";
              module = "blink.compat.source";
            };
          };
          compat = [ "codeium" ];
          default = [
        "lsp"
        "path"
        "buffer"
        "snippets"
      ];
        };
    };
    };
  };
}
