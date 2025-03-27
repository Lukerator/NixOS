{
  programs.nixvim.keymaps = [
    {
      mode = [ "i" ];
      key = "<CR>";
      options = {
        silent = true;
        desc = "Confirm selection";
      };
      action.__raw = ''
        cmp.mapping(function(fallback)
        local luasnip = require("luasnip")
          if cmp.visible() then
            if luasnip.expandable() then
              luasnip.expand()
            else
              cmp.confirm({ select = true, })
            end
          else
            fallback()
          end
        end)
      '';
    }
    {
      mode = [ "i" ];
      key = "<Tab>";
      options = {
        silent = true;
        desc = "Next suggestion";
      };
      action.__raw = ''
        cmp.mapping(function(fallback)
        local luasnip = require("luasnip")
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.locally_jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end)
      '';
    }
    {
      mode = [ "i" ];
      key = "<S-Tab>";
      options = {
        silent = true;
        desc = "Previous suggestion";
      };
      action.__raw = ''
        cmp.mapping(function(fallback)
        local luasnip = require("luasnip")
           if cmp.visible() then
             cmp.select_prev_item()
           elseif luasnip.locally_jumpable(-1) then
             luasnip.jump(-1)
           else
             fallback()
           end
         end)
      '';
    }
  ];
}
