{
  programs.nixvim.plugins.cmp.mapping = {
    "<CR>".__raw = # lua
      ''
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
    "<Tab>".__raw = # lua
      ''
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
    "<S-Tab>".__raw = # lua
      ''
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
  };
}
