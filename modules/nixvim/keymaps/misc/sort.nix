{
  programs.nixvim.keymaps = [
    {
      mode = "v";
      key = "<leader>sl";
      action = '': ! awk '{ print length(), $0 | "sort -n | cut -d\\  -f2-" }'<CR>'';
      options = {
        silent = true;
        desc = "[S]ort lines by [l]ength";
      };
    }
    {
      mode = "v";
      key = "<leader>sa";
      action = '':sort<CR>'';
      options = {
        silent = true;
        desc = "[S]ort lines [a]lphabetically";
      };
    }
  ];
}
