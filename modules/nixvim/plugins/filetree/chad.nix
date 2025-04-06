{
  programs.nixvim.plugins.chadtree = {
    enable = true;
    view.windowOptions.__raw = # lua
      ''
        {
          cursorline = true,
          signcolumn = 'no'
        }
      '';
  };
}
