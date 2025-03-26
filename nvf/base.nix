{ lib, ... }:
{
  programs.nvf = {
    enable = true;
    settings.vim = {
      enableLuaLoader = true;
      augroups = [
        {
          clear = true;
          enable = true;
          name = "HighlightYank";
        }
      ];
      autocmds = [
        {
          enable = true;
          pattern = [ "*" ];
          event = [ "TextYankPost" ];
          desc = "Highlight yanked text";
          callback = lib.generators.mkLuaInline /*lua*/ ''
            function()
              vim.highlight.on_yank({ timeout = 500 })
            end
          '';
        }
      ];
    };
  };
}
