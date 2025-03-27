{
  programs.nixvim.keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>gp";
      action = '':FloatermNew --autoclose=0 clear && python3 %<CR>'';
      options = {
        silent = true;
        desc = "[G]o [P]ython file";
      };
    }
  ];
}
