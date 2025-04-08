{
  keymaps = [
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
      key = "<leader>du";
      action.__raw = "function() require('dapui').close() require('dap').close() end";
      options = {
        silent = true;
        desc = "[D]ebug Stop R[u]nning";
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = ":DapTerminate<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [T]erminate";
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
  ];
}
