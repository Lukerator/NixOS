{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>pt";
      action = ":Typr<CR>";
      options = {
        silent = true;
        desc = "Typr";
      };
    }
    {
      mode = "n";
      key = "<leader>pl";
      action = ":Leet<CR>";
      options = {
        silent = true;
        desc = "Leetcode";
      };
    }
  ];
}
