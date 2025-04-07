{
  
keymaps = [
    {
      mode = "v";
      key = "<leader>ss";
      action = '': ! awk '{ print length(), $0 | "sort -n | cut -d\\  -f2-" }'<CR>'';
      options = {
        silent = true;
        desc = "[S]ort line[s] by length";
      };
    }
  ];
}
