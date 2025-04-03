{
  programs.nixvim.keymaps = [
    {
      mode = "";
      key = "<leader>f";
      options.desc = "[F]ormat buffer";
      action.__raw = # lua
        ''
          function()
            require('conform').format { async = true, lsp_fallback = true }
          end
        '';
    }
    {
      mode = "n";
      key = "zp";
      option.desc = "[P]review Fold";
      action.__raw = # lua
        ''
          function()
            local winid = require("ufo").peekFoldedLinesUnderCursor()
            if not winid then
              vim.lsp.buf.hover()
            end
          end
        '';
    }
  ];
}
