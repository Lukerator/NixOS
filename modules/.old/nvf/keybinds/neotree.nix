{
  programs.nvf.settings.config.vim.keymaps = [
    {
      mode = "n";
      key = "<C-n>";
      action = ":Neotree float %:p:h toggle reveal <CR>";
    }
  ];
}
