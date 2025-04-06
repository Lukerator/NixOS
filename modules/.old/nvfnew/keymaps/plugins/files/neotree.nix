{
  config.vim.keymaps = [
    {
      mode = "n"; # Makes the keymap available in normal mode
      silent = true; # Does not echo the keymap to the cmdline
      key = "<leader>n"; # Sets the keymap to Space + n
      desc = "Opens NeoTree"; # Sets the description for which-key
      action = ":Neotree float toggle reveal %:p:h<CR>"; # Opens NeoTree floating at the current file's parent folder
    }
  ];
}
