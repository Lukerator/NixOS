{
  keymaps = [
    {
      mode = "n";
      key = "<leader>gw";
      action = ":! firefox % &<CR><CR>";
      options = {
        silent = true;
        desc = "[G]o [H]tml file";
      };
    }
  ];
}
