{
  plugins.oil.settings.keymaps = {
    "<S-CR>" = "actions.cd";
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
