{
  keymaps = [
    {
      mode = "n";
      key = "<leader>gl";
      action = '':FloatermNew --autoclose=0 clear && lua %<CR>'';
      options = {
        silent = true;
        desc = "[G]o [L]ua file";
      };
    }
  ];
}
