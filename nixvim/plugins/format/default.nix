{ pkgs, ... }:
{
  programs.nixvim = {
    extraPackages = with pkgs; [
      black
      clang-tools
      nixfmt-rfc-style
      stylua
    ];
    plugins.conform-nvim = {
      enable = true;
      settings = {
        notify_on_error = false;
        format_on_save = # lua
          ''
            function(bufnr)
              local disable_filetypes = { c = true, cpp = true }
              return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype]
            }
            end
          '';
        formatters_by_ft = {
          cpp = [ "clang-format" ];
          nix = [ "nixfmt-rfc-style" ];
          lua = [ "stylua" ];
          python = [ "black" ];
        };
      };
    };
  };
}
