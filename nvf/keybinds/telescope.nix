{
  programs.nvf.settings.config.vim.keymaps = [
    {
      mode = "n";
      silent = true;
      key = "<leader><leader>";
      action = ":Telescope oldfiles<CR>";
    }
  ];
}
