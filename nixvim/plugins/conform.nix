{ pkgs, ... }:
{
  programs.nixvim = {
    extraPackages = with pkgs; [
      black
      clang-tools
      nixfmt-rfc-style
      stylua
      typstfmt
    ];
    keymaps = [
      {
        mode = "";
        key = "<leader>f";
        action.__raw = # lua
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
    plugins.conform-nvim = {
      enable = true;
      settings = {
        notify_on_error = false;
        formatters_by_ft = {
          lua = [ "stylua" ];
          haskell = [ "hfmt" ];
          python = [ "black" ];
          typst = [ "typstfmt" ];
          cpp = [ "clang_format" ];
          nix = [ "nixfmt-rfc-style" ];
        };
        format_on_save = # lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or not vim.b[bufnr].disable_autoformat then
                return
              end
              if slow_format_filetypes[vim.bo[bufnr].filetype] then
                return
              end
              local function on_format(err)
                if err and err:match("timeout$") then
                  slow_format_filetypes[vim.bo[bufnr].filetype] = true
                end
              end
              return { timeout_ms = 2000, lsp_fallback = true }, on_format
            end
          '';
      };
    };
  };
}
