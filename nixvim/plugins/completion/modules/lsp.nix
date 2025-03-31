{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      luals.enable = true;
      nixd.enable = true;
      pyright.enable = true;
    };
  };
}
