{
  
keymaps = [
    {
      mode = "n";
      key = "<leader>uu";
      action = ":UndotreeToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle undotree";
      };
    }
  ];
}
