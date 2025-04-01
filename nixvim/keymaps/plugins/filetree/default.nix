{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>n";
      action = ":lua mini.files.open()<CR>";
      options = {
        silent = true;
        desc = "Open Filetree";
      };
    }
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
