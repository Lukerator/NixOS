{
  
keymaps = [
    {
      key = "<C-0>";
      mode = "n";
      options.silent = true;
      action = ":lua vim.g.neovide_scale_factor = 0.9<CR>";
    }
    {
      key = "<C-=>";
      mode = "n";
      options.silent = true;
      action = ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>";
    }
    {
      key = "<C-->";
      mode = "n";
      options.silent = true;
      action = ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>";
    }
  ];
}
