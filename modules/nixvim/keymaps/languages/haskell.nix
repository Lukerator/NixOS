{
  keymaps = [
    {
      mode = "n";
      key = "<leader>gh";
      action = '':FloatermNew --autoclose=0 ghc %:p && clear && %:p:r && rm %:p:r && rm %:p:r.o && rm %:p:r.hi<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate and run [H]askell file";
      };
    }
  ];
}
