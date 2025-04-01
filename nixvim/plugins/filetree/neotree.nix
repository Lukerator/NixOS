{
  programs.nixvim.plugins.chadtree = {
    enable = true;
    view.windowOptions = # lua
      ''
        {
          cursorline = true,
          signcolumn = 'no'
        }
      '';
  };
}
