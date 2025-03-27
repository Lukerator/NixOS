{
  programs.nixvim.keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>gc";
      action = '':FloatermNew --autoclose=0 g++ -o %:r % -g && clear && ./%:r && rm ./%:r<CR>'';
      options = {
        silent = true;
        desc = "[G]enerate and run [C]++ file";
      };
    }
  ];
}
