{pkgs, ...}: {
  config.vim.autocomplete.blink-cmp.sourcePlugins.codeium = {
    enable = true;
    package = pkgs.vimPlugins.codeium-nvim;
    module = "blink.compat.source";
    max_items = 10;
    async = true;
  };
}
