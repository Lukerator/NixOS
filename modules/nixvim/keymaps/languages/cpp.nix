{
  keymaps = [
    {
      mode = "n";
      key = "<leader>gc";
      action = '':FloatermNew --autoclose=0 bash -c "g++ -o %:p:r %:p -g && clear && %:p:r && rm %:p:r"<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate, run and delete [C]++ file";
      };
    }
    {
      mode = "n";
      key = "<leader>gx";
      action = '':FloatermNew --autoclose=1 bash -c "g++ -o %:p:r %:p -g"<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate and run [C]++ file";
      };
    }
  ];
}
