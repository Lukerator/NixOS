{
  programs.nvf.settings.config.vim.statusline.lualine = {
    enable = true;
    ignoreFocus = [
      "notify"
      "neo-tree"
      "toggleterm"
      "neo-tree-popup"
      "TelescopePrompt"
    ];
    sectionSeparator = {
      left = "";
      right = "";
    };
    componentSeparator = {
      left = "";
      right = "";
    };
    activeSection = {
      a = [
        # lua
        ''
          {
            "mode",
            icons_enabled = true
          }
        ''
      ];
      b = [
        # lua
        ''
          {
            "filetype",
            colored = true,
            icon_only = true
          },
          {
            "filename",
            symbols = { modified = "", readonly = "" }
          }
        ''
      ];
      c = [
        # lua
        ''
          {
            function()
              local buf_ft = vim.api.nvim_get_option_value('filetype', {})
              for _, excluded_type in ipairs(excluded_buf_ft) do
                if buf_ft == excluded_type then
                  return ""
                end
              end
              local clients = vim.lsp.get_active_clients()
              local msg = 'No Active Lsp'
              if next(clients) == nil then
                return msg
              end
              for _, client in ipairs(clients) do
                local filetypes = client.config.filetypes
                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  return client.name
                end
              end
              return msg
            end,
            icon = " : ",
          }
        ''
      ];
      x = [
        # lua
        ''
          {
            "searchcount",
            maxcount = 999,
            timeout = 120
          }
        ''
      ];
      y = [
        # lua
        ''
          {
            function()
              return tostring(vim.fn.wordcount().words)
            end
          }
        ''
      ];
      z = [
        # lua
        ''
          {
            "location"
          }
        ''
      ];
    };
  };
}
