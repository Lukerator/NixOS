{
  programs.nvf.settings.vim.keymaps = [
    { key = "[d"; lua = true; mode = "n"; silent = true; noremap = true; action = "vim.diagnostic.goto_prev"; }
    { key = "]d"; lua = true; mode = "n"; silent = true; noremap = true; action = "vim.diagnostic.goto_next"; }
    { key = "<space>e"; lua = true; mode = "n"; silent = true; noremap = true; action = "vim.diagnostic.open_float"; }
    { key = "<space>q"; lua = true; mode = "n"; silent = true; noremap = true; action = "vim.diagnostic.setloclist"; }
  ];
}
