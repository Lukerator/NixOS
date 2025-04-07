{
  programs.nixvim.plugins.auto-save = {
    enable = true;
    settings = {
      trigger_events = {
        cancel_deferred_save = [ "InsertEnter" ];
        defer_save = [
          "InsertLeave"
          "TextChanged"
        ];
        immediate_save = [
          "BufLeave"
          "FocusLost"
        ];
      };
      condition = ''
        function(buf)
        local fn = vim.fn
          local utils = require("auto-save.utils.data")

        if utils.not_in(fn.getbufvar(buf, "&filetype"), {'oil'}) then
              return true
          end
          return false
        end
      '';
    };
  };
}
