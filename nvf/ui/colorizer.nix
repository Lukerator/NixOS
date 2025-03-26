{
  programs.nvf.settings.config.vim.ui.colorizer = {
    enable = true;
    setupOpts.filetypes."*" = {
      RGB = true;
      names = true;
      RRGGBB = true;
      tailwind = true;
      mode = "background";
    };
  };
}
