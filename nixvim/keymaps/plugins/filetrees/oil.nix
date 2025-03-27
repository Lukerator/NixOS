{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<C-n>";
        actions = ":Oil --float<CR>";
        options.silent = true;
      }
    ];
    plugins.oil.settings.keymaps = {
      "a" = "actions.create";
      "d" = "actions.delete";
      "r" = "actions.rename";
      "<CR>" = "actions.select";
      "?" = "actions.show_help";
      "<BS>" = "actions.parent";
      "<C-n>" = "actions.open_cwd";
    };
  };
}
