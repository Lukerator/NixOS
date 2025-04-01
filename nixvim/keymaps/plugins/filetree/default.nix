{
  programs.nixvim.keymaps = [
    {
      key = "<leader>chad";
      mode = "n";
      action = ":CHADopen<CR>";
      options.silent = true;
    }
  ];
}
