{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>gh";
      action = ":! zen-twilight % &<CR><CR>";
      options = {
        silent = true;
        desc = "[G]o [H]tml file";
      };
    }
  ];
}
