{pkgs, ...}: {
  programs.nvf.settings.config.vim.autocomplete.blink-cmp = {
    enable = true;
    sourcePlugins.codeium = {
      enable = true;
      package = pkgs.vimPlugins.codeium-nvim;
      module = "Codeium";
    };
  };
}
