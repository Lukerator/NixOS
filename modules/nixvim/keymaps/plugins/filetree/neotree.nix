{
  keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = ":Neotree float toggle reveal %:p:h<CR>";
      options = {
        silent = true;
        desc = "Open NeoTree";
      };
    }
  ];
}
