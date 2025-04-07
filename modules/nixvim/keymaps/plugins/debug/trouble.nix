{
  keymaps = [
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
      key = "<leader>eq";
      action = ":Trouble quickfix toggle<CR>";
      options = {
        silent = true;
        desc = "Quickfix list";
      };
    }
    {
      mode = "n";
      key = "<leader>ed";
      action = ":Trouble diagnostics toggle<CR>";
      options = {
        silent = true;
        desc = "Diagnostics list";
      };
    }
  ];
}
