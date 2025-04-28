{
  programs.nixvim.enable = true;
  imports = [
    ./keymaps
    ./misc
    ./plugins
  ];
}
