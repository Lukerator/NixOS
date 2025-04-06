{pkgs, ...}: {
  config.vim.autocomplete.blink-cmp.sourcePlugins.codeium = {
    enable = true;
    package = pkgs.vimPlugins.codeium-nvim;
    module = "blink.compat.source";
  };
}
