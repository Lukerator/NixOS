{
  programs.nixvim.plugins.blink-cmp.settings.snippets = {
    active.__raw = "function(filter) return vim.snippet.active(filter) end";
    expand.__raw = "function(snippet) vim.snippet.expand(snippet) end";
    jump.__raw = "function(direction) vim.snippet.jump(direction) end";
  };
}
