{ pkgs, ... }:
{
    programs.nixvim = {
    extraPackages = with pkgs; [
      clang-tools
      nixfmt-rfc-style
    ];

    # Autoformat
    # https://nix-community.github.io/nixvim/plugins/conform-nvim.html
    plugins.conform-nvim = {
        enable = true;
      settings = {
          notify_on_error = false;
        format_on_save = #lua
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
            lua = ["stylua"];
            python = [ "black" ];
          };
        };
      };

      keymaps = [
        {
          mode = "";
        key = "<leader>f";
          action.__raw = #lua
            ''
            function()
              require('conform').format { async = true, lsp_fallback = true }
            end
          '';
          options = {
            desc = "[F]ormat buffer";
          };
        }
    ];
    };
}
