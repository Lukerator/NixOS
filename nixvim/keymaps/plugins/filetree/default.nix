{
  programs.nixvim.keymaps = [
    {
      key = "<leader>n";
      mode = "n";
      action = ":CHADopen<CR>";
      options.silent = true;
    }
  ];
}
