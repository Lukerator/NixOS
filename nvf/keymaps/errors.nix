{
  programs.nvf.settings.vim.keymaps = [
    {
      lua = true;
      key = "<leader>ea";
      action = "vim.lsp.buf.code_action()";
    }
  ];
}
