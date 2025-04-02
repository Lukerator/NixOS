{
  programs.nvf.settings.vim.keymaps = [
    { key = "<"; mode = "v"; silent = true; noremap = true; action = "<gv"; }
    { key = ">"; mode = "v"; silent = true; noremap = true; action = ">gv"; }
    { mode = "n"; key = "<C-h>"; silent = true; noremap = true; action = "<C-w>h"; }
    { mode = "n"; key = "<C-j>"; silent = true; noremap = true; action = "<C-w>j"; }
    { mode = "n"; key = "<C-k>"; silent = true; noremap = true; action = "<C-w>k"; }
    { mode = "n"; key = "<C-l>"; silent = true; noremap = true; action = "<C-w>l"; }
    { mode = "n"; silent = true; noremap = true; key = "<C-Up>"; action = ":resize -2<CR>"; }
    { mode = "n"; silent = true; noremap = true; key = "<C-Down>"; action = ":resize +2<CR>"; }
    { mode = "n"; silent = true; noremap = true; key = "<C-Left>"; action = ":vertical resize -2<CR>"; }
    { mode = "n"; silent = true; noremap = true; key = "<C-Right>"; action = ":vertical resize +2<CR>"; }
  ];
}
