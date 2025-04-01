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
              __unkeyed-1 = "filename";
              symbols = {
                modified = "";
                readonly = "";
              };
            }
          ];
          lualine_c = [
            {
              __unkeyed-1 = "filetype";
              icon_only = true;
            }
          ];
          lualine_x = [ ];
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
    dashboard = {
      enable = true;
      settings = {
        theme = "hyper";
        change_to_vcs_root = true;
        hide = {
          statusline = true;
          tabline = true;
        };
        config = {
          mru.limit = 5;
          project.enable = false;
          footer = [
            ""
            "Make cool shit"
          ];
          header = [
            ""
            ""
            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║"
            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝"
            ""
            ""
          ];
          shortcut = [
            {
              key = "f";
              icon = " ";
              desc = "Files";
              group = "Label";
              icon_hl = "@variable";
              action.__raw = # lua
                "function(path) vim.cmd('Telescope find_files') end";
            }
          ];
        };
      };
    };
  };
}
