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
    {
      mode = "n";
      key = "<leader>et";
      action = ":Trouble<CR>";
      options = {
        silent = true;
        desc = "Toggle trouble";
      };
    }
    {
      mode = "n";
      key = "<leader>ed";
      action = ":Trouble diagnostics<CR>";
      options = {
        silent = true;
        desc = "Diagnostics list";
      };
    }
    {
      mode = "n";
      key = "<leader>eq";
      action = ":Trouble quickfix<CR>";
      options = {
        silent = true;
        desc = "Quickfix list";
      };
    }
  ];
}
