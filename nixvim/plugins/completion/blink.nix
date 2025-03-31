{
  imports = [
    ./modules/compat.nix
  ];
  programs.nixvim.plugins = {
    blink-compat.enable = true;
    blink-cmp = {
      enable = true;
      settings.keymap.preset = "none";
    };
  };
}
