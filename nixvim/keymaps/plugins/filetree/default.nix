{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>tree";
      action = ":Neotree float toggle reveal %:p:h<CR>";
      options = {
        silent = true;
        desc = "Open NeoTree";
      };
    }
  ];
}
