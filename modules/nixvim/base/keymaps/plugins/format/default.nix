{
  programs.nixvim.keymaps = [
    {
      mode = "";
      key = "<leader>f";
      options.desc = "[F]ormat buffer";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
    }
    {
      mode = "n";
      key = "zp";
      options.desc = "[P]review Fold";
      action.__raw = ''
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
