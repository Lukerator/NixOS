{
  programs.nixvim.keymaps = [
    {
      key = "<C-S-c>";
      mode = [ "v" ];
      action = "\"+y";
    }
    {
      key = "<C-S-v>";
      action = "<C-R>+";
      mode = [
        "i"
        "c"
      ];
    }
    {
      key = "<C-S-v>";
      action = "\"+p";
      mode = [
        "n"
        "v"
      ];
    }
  ];
}
