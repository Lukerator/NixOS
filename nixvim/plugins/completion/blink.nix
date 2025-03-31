{
  programs.nixvim.plugins = {
    blink-compat.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
      snippets = {
        active.__raw = "function(filter) return vim.snippet.active(filter) end";
        expand.__raw = "function(snippet) vim.snippet.expand(snippet) end";
        jump.__raw = "function(direction) vim.snippet.jump(direction) end";
      };
      sources = {
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
