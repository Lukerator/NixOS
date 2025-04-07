{
  programs.nixvim.plugins = {
    dap.enable = true;
    dap-ui.enable = true;
    dap-lldb = {
      enable = true;
      settings.configurations.cpp = [
        {
          type = "lldb";
          name = "Attach";
          request = "attach";
          stopOnEntry = false;
          cwd = "$\${workspaceFolder}";
          program.__raw = ''
            function()
              local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
              return vim.fn.input("Path to executable: ", cwd, "file")
            end
          '';
        }
        {
          type = "lldb";
          name = "Debug";
          request = "launch";
          stopOnEntry = false;
          cwd = "$\${workspaceFolder}";
          program.__raw = ''
            function()
              local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
              return vim.fn.input("Path to executable: ", cwd, "file")
            end
          '';
        }
        {
          type = "lldb";
          request = "launch";
          stopOnEntry = false;
          name = "Debug (+args)";
          cwd = "$\${workspaceFolder}";
          args.__raw = ''
            function()
              local args = vim.fn.input("Arguments: ")
              return vim.split(args, " ", { trimempty = true })
            end
          '';
          program.__raw = ''
            function()
              local cwd = string.format("%s%s", vim.fn.getcwd(), sep)
              return vim.fn.input("Path to executable: ", cwd, "file")
            end
          '';
        }
      ];
    };
  };
}
