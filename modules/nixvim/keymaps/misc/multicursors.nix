{
  programs.nixvim.keymaps = [
    {
      key = "<leader>mc";
      action = ":MCstart<CR>";
      mode = [
        "n"
        "v"
      ];
      options = {
        silent = true;
        desc = "Multicursors";
      };
    }
  ];
}
