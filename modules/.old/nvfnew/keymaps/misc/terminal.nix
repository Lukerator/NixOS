{
  config.vim.keymaps = [
    {
      mode = "t"; # Makes the keymap available in terminal mode
      key = "<Esc><Esc>"; # Sets the keymap to Escape twice
      action = "<C-\\><C-n>"; # Changes to normal mode in the current terminal
      desc = "Exit terminal mode"; # Adds a description for which-key
    }
  ];
}
