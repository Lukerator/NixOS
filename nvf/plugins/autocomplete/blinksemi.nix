{
  programs.nvf.settings.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      setupOpts = {
        keymap.preset = "super-tab";
        cmdline = {
          keymap.preset = "super-tab";
          sources = [
            "path"
          ];
        };
      };
    };
  };
}
