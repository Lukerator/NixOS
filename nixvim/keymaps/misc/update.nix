{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>uh";
      action = ":FloatermNew --height=0.8 --width=0.8 --cwd=~ nu home-update<cr>";
      options = {
        silent = true;
        desc = "Update home";
      };
    }
    {
      mode = "n";
      key = "<leader>us";
      action = ":FloatermNew --height=0.8 --width=0.8 --cwd=~ nu system-update<cr>";
      options = {
        silent = true;
        desc = "Update system";
      };
    }
    {
      mode = "n";
      key = "<leader>upd";
      action = ":FloatermNew --height=0.8 --width=0.8 --cwd=~ nu update<cr>";
      options = {
        silent = true;
        desc = "Update everything";
      };
    }
    {
      mode = "n";
      key = "<leader>upg";
      action = ":FloatermNew --height=0.8 --width=0.8 --cwd=~ nu upgrade<cr>";
      options = {
        silent = true;
        desc = "Upgrade everything";
      };
    }
  ];
}
