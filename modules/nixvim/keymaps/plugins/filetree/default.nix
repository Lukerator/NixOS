{
  plugins.oil.settings.keymaps = {
    "<S-CR>" = "actions.cd";
    "?" = "actions.show_help";
    "<BS>" = "actions.parent";
    "<CR>" = "actions.select";
    "<Esc>" = "actions.close";
    "." = "actions.toggle_hidden";
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
