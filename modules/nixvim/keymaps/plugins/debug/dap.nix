{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
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
