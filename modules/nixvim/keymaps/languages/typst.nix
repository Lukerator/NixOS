{
  keymaps = [
    {
      mode = "n";
      key = "<leader>gt";
      action = ":! typst c %<CR><CR>";
      options = {
        silent = true;
        desc = "[G]o [T]ypst file";
      };
    }
    {
      mode = "n";
      key = "<leader>gz";
      action = ":! zathura %:r.pdf &<CR><CR>";
      options = {
        silent = true;
        desc = "[G]o open [Z]athura";
      };
    }
  ];
}
