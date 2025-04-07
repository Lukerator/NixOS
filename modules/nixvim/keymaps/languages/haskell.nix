{
  
keymaps = [
    {
      mode = "n";
      key = "<leader>gh";
      action = '':FloatermNew --autoclose=0 ghc % && clear && ./%:r && rm ./%:r && rm ./%:r.o && rm ./%:r.hi<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate and run [H]askell file";
      };
    }
  ];
}
