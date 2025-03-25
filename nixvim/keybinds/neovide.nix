{
  programs.nixvim.extraConfigLuaPost = # lua
    ''
      if vim.g.neovide then
        vim.o.guifont = "JetBrainsMono NF:h14"
        vim.keymap.set("v", "<C-S-c>", '"+y', {silent = true, noremap = true})
        vim.keymap.set("i", "<C-S-v>", '<C-R>+', {silent = true, noremap = true})
        vim.keymap.set({ "n", "v", "c" }, "<C-S-v>", '"+p', {silent = true, noremap = true})
        vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 0.9<CR>", {silent = true, noremap = true})
        vim.keymap.set({ "n", "v" }, "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", {silent = true, noremap = true})
        vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", {silent = true, noremap = true})
        vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", {silent = true, noremap = true})
        vim.keymap.set({ "n", "v" }, "<C-_>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", {silent = true, noremap = true})
      end
    '';
}
