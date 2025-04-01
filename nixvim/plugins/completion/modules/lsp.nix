{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      nixd.enable = true;
      clangd.enable = true;
      lua_ls.enable = true;
      pyright.enable = true;
      tinymist.enable = true;
    };
  };
}
