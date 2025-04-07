{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>gc";
      action = '':FloatermNew --autoclose=0 bash -c "g++ -o %:p:r %:p -g && clear && %:p:r && rm %:p:r"<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate and run [C]++ file";
      };
    }
  ];
}
