{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>chad";
      options.silent = true;
      action = ":CHADopen<CR>";
    }
  ];
}
