{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ea";
      action = ":lua vim.lsp.buf.code_action()<CR>";
      options = {
        silent = true;
        desc = "Show error actions";
      };
    }
  ];
}
