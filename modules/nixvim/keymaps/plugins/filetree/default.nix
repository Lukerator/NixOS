{
  plugins.oil.settings.keymaps = {
    "<BS>" = "actions.parent";
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = ":Oil<CR>";
      options = {
        silent = true;
        desc = "Open Oil";
      };
    }
  ];
}
