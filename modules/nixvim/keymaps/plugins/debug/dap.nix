{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dsi";
      action = ":DapStepInto<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [S]tep [i]nto";
      };
    }
    {
      mode = "n";
      key = "<leader>dso";
      action = ":DapStepOver<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [S]tep [o]ver";
      };
    }
    {
      mode = "n";
      key = "<leader>dsO";
      action = ":DapStepOut<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [S]tep [O]ut";
      };
    }
    {
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<CR>";
      options = {
        silent = true;
        desc = "[D]ebug Toggle [B]reakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>dc";
      options = {
        silent = true;
        desc = "[D]ebug [C]ontinue";
      };
      action.__raw = ''
        function()
          require("dapui").toggle()
          require("dap").run({
            type = "lldb",
            name = "Debug",
            request = "launch",
            program = vim.fn.expand("%:p:r")
          })
        end
      '';
    }
    {
      mode = "n";
      key = "<leader>ta";
      options = {
        silent = true;
        desc = "[T]oggle [A]ll breakpoints";
      };
      action.__raw = ''
        function()
          local current_buf = vim.api.nvim_get_current_buf()
          local total_lines = vim.api.nvim_buf_line_count(current_buf)
          for line_num = 0, total_lines - 1 do
            require('dap').toggle_breakpoint(line_num)
          end
        end
      '';
    }
    {
      mode = "v";
      key = "<leader>ta";
      options = {
        silent = true;
        desc = "[T]oggle [A]ll breakpoints";
      };
      action.__raw = ''
        function()
          local start_line, end_line = vim.fn.line("v"), vim.fn.line(".")
          if start_line > end_line then
            start_line, end_line = end_line, start_line
          end
          for line_num = start_line - 1, end_line - 1 do
            require('dap').toggle_breakpoint(line_num)
          end
        end
      '';
    }
  ];
}
