{ lib, ... }:
{
  programs.nvf = {
    enable = true;
    settings.vim = {
      enableLuaLoader = true;
      augroups = [
        {
          clear = true;
          enable = true;
          name = "HighlightYank";
        }
      ];
      autocmds = [
        {
          enable = true;
          pattern = [ "*" ];
          event = [ "TextYankPost" ];
          desc = "Highlight yanked text";
          callback = lib.generators.mkLuaInline /*lua*/ ''
            function()
              vim.highlight.on_yank({ timeout = 500 })
            end
          '';
        }
      ];
      autocomplete.blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
        setupOpts = {
          cmdline = {
            keymap.preset = "super-tab";
            sources = [
              "path"
            ];
          };
          keymap = {
            preset = "none";
            "<Tab>" = [
              (lib.generators.mkLuaInline /*lua*/ ''
                cmp.mapping(function(fallback)
                local luasnip = require("luasnip")
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif luasnip.locally_jumpable(1) then
                    luasnip.jump(1)
                  else
                    fallback()
                  end
                end
              '')
            ];
            "<CR>" = [
              (lib.generators.mkLuaInline /*lua*/ ''
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
                end
              '')
            ];
          };
        };
      };
    };
  };
}
