{
  config.vim.keymaps = [
    {
      mode = "n"; # Makes the keymap available in normal mode
      silent = true; # Does not echo the keymap to the cmdline
      key = "<Esc>"; # Sets the keymap to the Escape key
      action = ":nohlsearch<CR>"; # Stop search highlighting
    }
  ];
}
