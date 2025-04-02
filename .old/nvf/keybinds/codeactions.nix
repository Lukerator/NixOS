{
  programs.nvf.settings.config.vim.keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":lua vim.lsp.buf.code_action()<CR>";
    }
  ];
}
