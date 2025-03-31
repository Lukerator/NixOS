{
  programs.nixvim.plugins = {
    blink-compat.enable = true;
    blink-cmp = {
      enable = true;
      settings = {
      snippets = {
        active.__raw = "function(filter) return vim.snippet.active(filter) end";
        expand.__raw = "function(snippet) vim.snippet.expand(snippet) end";
        jump.__raw = "function(direction) vim.snippet.jump(direction) end";
      };
      sources.default = [
        "lsp"
        "path"
        "buffer"
        "snippets"
      ];
      keymap = {
        preset = "none";
        "<CR>".__raw =
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
    "<Tab>".__raw =
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
    "<S-Tab>".__raw =
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
    };
    };
  };
}
