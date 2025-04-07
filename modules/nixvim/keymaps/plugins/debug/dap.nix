{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = "print('test')";
    }
  ];
}
