{
  programs.nixvim.plugins.cmp = {
    enable = true;
    settings.sources = [
        { namee = "path"; }
        { name = "buffer"; }
        { name = "codeium"; }
        { name = "luasnip"; }
        { name = "nvim_lsp"; }
      ];
    };
}
