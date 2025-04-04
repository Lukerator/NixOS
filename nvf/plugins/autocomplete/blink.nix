{ pkgs, ... }:
{
  config.vim.autocomplete = {
    enableSharedCmpSources = true;
    blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
      sourcePlugins.codeium = {
        enable = true;
        package = ${pkgs.vimPlugins.codeium-nvim};
        module = "blink.compat.source";
      };
      setupOpts = {
        keymap = {
          preset = "none";
          "<CR>" = [ "accept" "fallback" ];
          "<Tab>" = [ "snippet_forward" "select_next" "fallback" ];
          "<S-Tab>" = [ "snippet_backward" "select_prev" "fallback" ];
        };
        sources.default = [
          "lsp"
          "path"
          "buffer"
          "codeium"
          "snippets"
        ];
      };
    };
    nvim-cmp = {
      enable = true;
      setupOpts.completion.completeopt = "";
    };
  };
}
