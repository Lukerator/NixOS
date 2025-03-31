{
  programs.nixvim.plugins = {
    dropbar.enable = true;
    luasnip.enable = true;
    floaterm.enable = true;
    which-key.enable = true;
    web-devicons.enable = true;
    rainbow-delimiters.enable = true;
    barbar = {
      enable = true;
      settings.no_name_title = "New File";
      keymaps = {
        next.key = "<Tab>";
        close.key = "<leader>x";
        previous.key = "<S-Tab>";
      };
    };
    lualine = {
      enable = true;
      settings = {
        options = {
          section_separators = {
            left = "";
            right = "";
          };
          component_separators = {
            left = "";
            right = "";
          };
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
            }
            {
              __unkeyed-1 = "filename";
              symbols = {
                modified = "";
                readonly = "";
              };
            }
          ];
          lualine_c = [
            {
              __raw = ''
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
              '';
              icon = " : ";
            }
          ];
          lualine_x = [
            {
              __unkeyed-1 = "searchcount";
              maxcount = 999;
              timeout = 120;
            }
          ];
          lualine_y = [
            {
              __raw = # lua
                ''
                  function()
                    return tostring(vim.fn.wordcount().words)
                  end
                '';
            }
          ];
          lualine_z = [ "location" ];
        };
      };
    };
  };
}
