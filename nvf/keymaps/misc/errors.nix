{
  programs.nvf.settings.vim.keymaps = [
    {
      mode = [
        "n" # Makes the keymap available in normal mode
        "v" # Makes the keymap available in visual mode
      ];
      lua = true; # Makes the action a lua function
      key = "<leader>ea"; # Sets the keymap to Space + e + a
      desc = "Show [C]ode [A]ctions"; # Sets the description for which-key
      action = "vim.lsp.buf.code_action()"; # Opens code actions for the current lines
    }
  ];
}
