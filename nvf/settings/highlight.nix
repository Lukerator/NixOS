{ lib, ... }:
{
  config.vim = {
    augroups = [
      {
        clear = true; # Clears the augroup
        enable = true; # Enables the augroup
        name = "HighlightYank"; # Sets the name of the augroup
      }
    ];
    autocmds = [
      {
        enable = true; # Enables the autocmd
        group = "HighlightYank"; # Sets the group of the autocmd
        event = [ "TextYankPost" ]; # Sets the event of the autocmd
        callback = lib.generators.mkLuaInline "lua vim.highlight.on_yank()"; # Sets the command of the autocmd
      }
    ];
  };
}
