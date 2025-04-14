{
  plugins.oil.settings.keymaps = {
    "<CR>" = "actions.cwd";
    "<BS>" = "actions.parent";
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = ":Oil --float<CR>";
      options = {
        silent = true;
        desc = "Open Oil";
      };
    }
  ];
}
