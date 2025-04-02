{
  programs.nvf.settings.config.vim.keymaps = [
    {
      mode = "v";
      silent = true;
      noremap = true;
      key = "<C-S-c>";
      action = ''"+y'';
    }
    {
      silent = true;
      noremap = true;
      key = "<C-S-v>";
      action = "<C-R>+";
      mode = [
        "c"
        "i"
      ];
    }
    {
      silent = true;
      noremap = true;
      key = "<C-S-v>";
      action = ''"+p'';
      mode = [
        "n"
        "v"
      ];
    }
  ];
}
