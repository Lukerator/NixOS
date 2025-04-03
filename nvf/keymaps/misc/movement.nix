{
  config.vim.keymaps = [
    {
      mode = "n"; # Makes the keymap available in normal mode
      key = "<C-h>"; # Sets the keymap to Ctrl + h
      action = "<C-w><C-h>"; # Moves focus to the left window
    }
    {
      mode = "n"; # Makes the keymap available in normal mode
      key = "<C-l>"; # Sets the keymap to Ctrl + l
      action = "<C-w><C-l>"; # Moves focus to the right window
    }
    {
      mode = "n"; # Makes the keymap available in normal mode
      key = "<C-j>"; # Sets the keymap to Ctrl + j
      action = "<C-w><C-j>"; # Moves focus to the lower window
    }
    {
      mode = "n"; # Makes the keymap available in normal mode
      key = "<C-k>"; # Sets the keymap to Ctrl + k
      action = "<C-w><C-k>"; # Moves focus to the upper window
    }
  ];
}
