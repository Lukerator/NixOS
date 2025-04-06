{
  programs.nixvim.keymaps = [
    {
      mode = "v";
      key = "<leader>ss";
      action = '': ! awk '{ print length(), $0 | "sort -n | cut -d\\  -f2-" }'<CR>'';
    }
  ];
}
