{
  programs.nixvim.keymaps = [
    {
      key = "<leader>n";
      mode = "n";
      action = ":Neotree float toggle reveal %:p:h<CR>";
      options.silent = true;
    }
  ];
}
