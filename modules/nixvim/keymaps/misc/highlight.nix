{
  keymaps = [
    {
      key = "<Esc>";
      mode = "n";
      action = ":nohlsearch<CR>";
      options = {
        silent = true;
        desc = "No highlights in search";
      };
    }
  ];
}
