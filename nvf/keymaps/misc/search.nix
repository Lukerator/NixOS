{
  programs.nvf.settings.vim.keymaps = [
    {
      mode = "n"; # Makes the keymap available in normal mode
      key = "<Esc>"; # Sets the keymap to the Escape key
      action = ":nohlsearch<CR>"; # Stop search highlighting
    }
  ];
}
