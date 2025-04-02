{
  programs.nvf.settings.vim.keymaps = [
    {
      key = "]c";
      lua = true;
      mode = "n";
      desc = "Jump to next git [c]hange";
      action = # lua
        ''
          function()
            if vim.wo.diff then vim.cmd.normal { ']c', bang = true }
            else require("gitsigns").next_hunk() end
          end
        '';
    }
    {
      key = "[c";
      lua = true;
      mode = "n";
      desc = "Jump to previous git [c]hange";
      action = # lua
        ''
          function()
            if vim.wo.diff then vim.cmd.normal { '[c', bang = true }
            else require(" itsigns").prev_hunk() end
          end
        '';
    }
    {
      lua = true;
      mode = "v";
      key = "<leader>hs";
      desc = "Git [s]tage hunk";
      action = # lua
        ''
          function()
            require("gitsigns").stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hr";
      desc = "Git [r]tage hunk";
      action = # lua
        ''
          function()
            require("gitsigns").reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hs";
      desc = "git [s]tage hunk";
      action = # lua
        ''
          function()
            require("gitsigns").stage_hunk()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hr";
      desc = "git [r]eset hunk";
      action = # lua
        ''
          function()
            require("gitsigns").reset_hunk()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hS";
      desc = "git [S]tage buffer";
      action = # lua
        ''
          function()
            require("gitsigns").stage_buffer()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hu";
      desc = "git [u]ndo stage hunk";
      action = # lua
        ''
          function()
            require("gitsigns").undo_stage_hunk()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hR";
      desc = "git [R]eset buffer";
      action = # lua
        ''
          function()
            require("gitsigns").reset_buffer()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hp";
      desc = "git [p]review hunk";
      action = # lua
        ''
          function()
            require("gitsigns").preview_hunk()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hb";
      desc = "git [b]lame line";
      action = # lua
        ''
          function()
            require("gitsigns").blame_line()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hd";
      desc = "git [d]iff against index";
      action = # lua
        ''
          function()
            require("gitsigns").diffthis()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>hD";
      desc = "git [D]iff against last commit";
      action = # lua
        ''
          function()
            require("gitsigns").diffthis("@")
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>tb";
      desc = "[T]oggle git show [b]lame line";
      action = # lua
        ''
          function()
            require("gitsigns").toggle_current_line_blame()
          end
        '';
    }
    {
      lua = true;
      mode = "n";
      key = "<leader>tD";
      desc = "[T]oggle git show [D]eleted";
      action = # lua
        ''
          function()
            require("gitsigns").preview_hunk_inline()
          end
        '';
    }
  ];
}
