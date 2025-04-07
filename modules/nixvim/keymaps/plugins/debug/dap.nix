{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>lua require'dap'.toggle_breakpoint()<cr>";
      options = {
        desc = "DAP Toggle Breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dBc";
      action = "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options = {
        desc = "DAP Set Conditional Breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dBl";
      action = "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>";
      options = {
        desc = "DAP Set Log Breakpoint";
        silent = true;
      };
    }
    /*
      {
        mode = "n";
        key = "<leader>dc";
        action.__raw = ''
          function()
            local filename = vim.fn.expand("%:t:r")
            local compile_command = "g++ " .. vim.fn.expand("%") .. " -o " .. vim.fn.getcwd() .. "/" .. filename
            vim.fn.system(compile_command)
            local compile_result = vim.fn.system("echo $?")
            if compile_result ~= "0\n" then
              print("Compilation failed!")
              return
            end
            local dap = require("dap")
            local path = vim.fn.getcwd() .. "/" .. filename
            local dapui = require("dapui")
            dapui.toggle()
            dap.run({
              type = "lldb",
              request = "launch",
              name = "Launch C++",
              program = path,
              cwd = vim.fn.getcwd(),
              stopOnEntry = false,
              args = {},
            })
            vim.cmd("autocmd VimLeavePre * lua os.remove('" .. executable_path .. "')")
          end
        '';
        options = {
          desc = "DAP Launch (auto compile and toggle dapui)";
          silent = true;
        };
      }
    */
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''
        function()
            local filename = vim.fn.expand("%:t:r")
            local executable_path = vim.fn.getcwd() .. "/" .. filename
            local compile_command = "g++ " .. vim.fn.expand("%") .. " -o " .. executable_path
            vim.fn.system(compile_command)
            local compile_result = vim.fn.system("echo $?")
            if compile_result ~= "0\n" then
                print("Compilation failed!")
              return
            end
            vim.fn.system(executable_path)
            vim.fn.system("rm " .. executable_path)
            local dapui = require("dapui")
            dapui.toggle()
          end
      '';
    }
    {
      mode = "n";
      key = "<leader>dsi";
      action = "<cmd>lua require'dap'.step_into()<cr>";
      options = {
        desc = "DAP Step Into";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dso";
      action = "<cmd>lua require'dap'.step_over()<cr>";
      options = {
        desc = "DAP Step Over";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dsO";
      action = "<cmd>lua require'dap'.step_out()<cr>";
      options = {
        desc = "DAP Step Out";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>lua require'dap'.terminate()<cr>";
      options = {
        desc = "DAP Terminate";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>lua require'dap'.repl.open()<cr>";
      options = {
        desc = "Open REPL";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require'dap'.run_last()<cr>";
      options = {
        desc = "Run Last";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require'dapui'.toggle()<cr>";
      options = {
        desc = "Dap UI Toggle";
        silent = true;
      };
    }
  ];
}
