{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
      options.desc = "Test";
      action.__raw = ''
        function()
          vim.fn.system("g++ " .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r"))
          require("dap").run({
            type = "lldb",
            request = "launch",
            program = vim.fn.expand("%:r")
          })
          require("dap-ui").toggle()
          vim.fn.system("rm " .. vim.fn.expand("%:r"))
        end
      '';
    }
    {
      mode = "n";
      key = "<leader>db";
      action.__raw = "require'dap'.toggle_breakpoint()";
      options = {
        desc = "DAP Toggle Breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dsi";
      action.__raw = "require'dap'.step_into()";
      options = {
        desc = "DAP Step Into";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dso";
      action.__raw = "require'dap'.step_over()";
      options = {
        desc = "DAP Step Over";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dsO";
      action.__raw = "require'dap'.step_out()";
      options = {
        desc = "DAP Step Out";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action.__raw = "require'dap'.terminate()";
      options = {
        desc = "DAP Terminate";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dr";
      action.__raw = "require'dap'.repl.open()";
      options = {
        desc = "Open REPL";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dl";
      action.__raw = "require'dap'.run_last()";
      options = {
        desc = "Run Last";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action.__raw = "require'dapui'.toggle()";
      options = {
        desc = "Dap UI Toggle";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dBc";
      action.__raw = "require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))";
      options = {
        desc = "DAP Set Conditional Breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dBl";
      action.__raw = "require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))";
      options = {
        desc = "DAP Set Log Breakpoint";
        silent = true;
      };
    }
  ];
}
