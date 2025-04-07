{
  programs.nixvim.plugins.chadtree = {
    enable = true;
    view.windowOptions.__raw = ''
      {
        cursorline = true,
        signcolumn = 'no'
      }
    '';
  };
}
