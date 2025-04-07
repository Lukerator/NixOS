{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''
        function()
          vim.fn.system("g++ " .. vim.fn.expand("%") .. " -o " .. vim.fn.expand("%:r"))
          require("dapui").toggle()
          require("dap").run({
            type = "lldb",
            name = "Debug",
            request = "launch",
            program = vim.fn.expand("%:r")
          })
          vim.fn.system("rm " .. vim.fn.expand("%:r"))
        end
      '';
    }
  ];
}
