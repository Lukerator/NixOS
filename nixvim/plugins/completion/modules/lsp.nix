{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      lua_ls.enable = true;
      nixd.enable = true;
      pyright.enable = true;
    };
  };
}
