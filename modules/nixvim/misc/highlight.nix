{
  programs.nixvim = {
    autoGroups = {
      highlight-yank = {
        clear = true;
      };
    };
    autoCmd = [
      {
        event = [ "TextYankPost" ];
        desc = "Highlight when yanking (copying) text";
        group = "highlight-yank";
        callback.__raw = # lua
          ''
            function()
              vim.highlight.on_yank()
            end
          '';
      }
    ];
  };
}
