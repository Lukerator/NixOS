{
  
keymaps = [
    {
      mode = "n";
      key = "<leader>sh";
      action = ":FzfLua help_tags<CR>";
      options = {
        silent = true;
        desc = "[S]earch [H]elp";
      };
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = ":FzfLua keymaps<CR>";
      options = {
        silent = true;
        desc = "[S]earch [K]eymaps";
      };
    }
    {
      mode = "n";
      key = "<leader>sf";
      action = ":FzfLua files<CR>";
      options = {
        silent = true;
        desc = "[S]earch [F]iles";
      };
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = ":FzfLua builtin<CR>";
      options = {
        silent = true;
        desc = "[S]earch [B]uiltins";
      };
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = ":FzfLua grep_cword<CR>";
      options = {
        silent = true;
        desc = "[S]earch current [W]ord";
      };
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = ":FzfLua live_grep<CR>";
      options = {
        silent = true;
        desc = "[S]earch by [G]rep";
      };
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = ":FzfLua resume<CR>";
      options = {
        silent = true;
        desc = "[S]earch [R]esume";
      };
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = ":FzfLua oldfiles<CR>";
      options = {
        silent = true;
        desc = "Search Recent Files";
      };
    }
  ];
}
