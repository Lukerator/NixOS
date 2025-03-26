{pkgs, ...}: {
  programs.nvf.settings.config.vim.autocomplete.blink-cmp = {
    enable = true;
    friendly-snippets.enable = true;
    sourcePlugins.codeium = {
      enable = true;
      package = pkgs.vimPlugins.codeium-nvim;
      module = "codeium-nvim";
    };
  };
}
