{
  programs.nixvim.keymaps = [
    {
      key = "<C-n>";
      mode = "n";
      action = ":Neotree float toggle reveal %:p:h<CR>";
      options.silent = true;
    }
  ];
}
