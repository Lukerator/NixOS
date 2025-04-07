{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''
        function()
          os.execute("g++ " .. vim.fn.expand("%:p") .. " -o " .. vim.fn.expand("%:p:r"))
          require("dapui").toggle()
          require("dap").run({
            type = "lldb",
            name = "Debug",
            request = "launch",
            program = vim.fn.expand("%:p:r")
          })
          os.execute("rm " .. vim.fn.expand("%:p:r"))
        end
      '';
    }
  ];
}
