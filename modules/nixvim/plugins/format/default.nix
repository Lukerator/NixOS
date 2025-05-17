{ pkgs, ... }:
{
  programs.nixvim = {
    extraPackages = with pkgs; [
      black
      stylua
      typstfmt
      clang-tools
      nixfmt-rfc-style
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
          lua = [ "stylua" ];
          python = [ "black" ];
          typst = [ "typstfmt" ];
          cpp = [ "clang-format" ];
          nix = [ "nixfmt-rfc-style" ];
        };
      };
    };
  };
}
