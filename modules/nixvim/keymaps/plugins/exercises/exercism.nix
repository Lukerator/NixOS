{
  keybinds = [
    {
      mode = "n";
      key = "<leader>ea";
      action = ":ExercismLanguages<CR>";
      options = {
        silent = true;
        desc = "[E]xercism [A]vailable Languages";
      };
    }
    {
      mode = "n";
      key = "<leader>el";
      action = ":ExercismList cpp<CR>";
      options = {
        silent = true;
        desc = "[E]xercism [L]ist Problems";
      };
    }
    {
      mode = "n";
      key = "<leader>et";
      action = ":ExercismTest<CR>";
      options = {
        silent = true;
        desc = "[E]xercism [T]est";
      };
    }
    {
      mode = "n";
      key = "<leader>es";
      action = ":ExercismSubmit<CR>";
      options = {
        silent = true;
        desc = "[E]xercism [S]ubmit";
      };
    }
  ];
}
