{
  programs.nixvim.plugins.oil.settings.keymaps = {
    "c" = "actions.copy";
    "m" = "actions.move";
    "p" = "actions.paste";
    "a" = "actions.create";
    "d" = "actions.delete";
    "r" = "actions.rename";
    "<CR>" = "actions.select";
    "?" = "actions.show_help";
    "<BS>" = "actions.parent";
    "<C-n>" = "actions.open_cwd";
    "<S-h>" = "actions.toggle_hidden";
  };
}
