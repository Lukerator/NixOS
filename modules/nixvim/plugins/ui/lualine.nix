{
  
plugins.lualine = {
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
            __raw = ''
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
}
