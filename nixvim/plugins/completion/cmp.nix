{
  programs.nixvim.plugins.cmp = {
    enable = true;
    settings = {
      completion.completeopt = "menu,menuone,noinsert";
      snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      window = {
        completion.border = "rounded";
        documentation.border = "rounded";
      };
      sources = [
        { name = "path"; }
        { name = "buffer"; }
        { name = "codeium"; }
        { name = "luasnip"; }
        { name = "nvim_lsp"; }
      ];
    };
  };
}
