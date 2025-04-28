{
  programs.nixvim.plugins.lsp = {
    enable = true;
    servers = {
      html.enable = true;
      nixd.enable = true;
      clangd.enable = true;
      lua_ls.enable = true;
      pyright.enable = true;
      tinymist.enable = true;
      marksman.enable = true;
      hls = {
        enable = true;
        installGhc = false;
      };
    };
  };
}
