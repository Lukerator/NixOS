{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dt";
      action = ":Trouble<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [T]rouble";
      };
    }
    {
      mode = "n";
      key = "<leader>dq";
      action = ":Trouble quickfix toggle<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [Q]uickfix";
      };
    }
    {
      mode = "n";
      key = "<leader>de";
      action = ":Trouble diagnostics toggle<CR>";
      options = {
        silent = true;
        desc = "[D]ebug [E]rrors";
      };
    }
  ];
}
