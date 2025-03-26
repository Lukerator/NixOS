{
  programs.nvf = {
    enable = true;
    settings.vim = {
      enableLuaLoader = true;
      augroups.highlightyank = {
        clear = true;
        enable = true;
        name = "HighlightYank";
      };
      autocmd.highlightyank = {
        enable = true;
        group = "HighlightYank";
        event = [ "TextYankPost" ];
        desc = "Highlight yanked text";
        callback = "function() vim.highlight.on_yank end";
      };
    };
  };
}
