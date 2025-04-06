{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>uu";
      action = ":UndotreeToggle<CR>";
      opts = {
        silent = true;
        desc = "Toggle undotree";
      };
    }
  ];
}
