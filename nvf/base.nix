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
      autocmds.highlightyank = {
        enable = true;
        event = [ "TextYankPost" ];
        callback = ''function() vim.highlight.on_yank() end'';
      };
    };
  };
}
