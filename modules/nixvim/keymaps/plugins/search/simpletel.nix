{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>sh";
      action = ":Telescope help_tags<CR>";
      options = {
        silent = true;
        desc = "[S]earch [H]elp";
      };
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = ":Telescope keymaps<CR>";
      options = {
        silent = true;
        desc = "[S]earch [K]eymaps";
      };
    }
    {
      mode = "n";
      key = "<leader>sf";
      action = ":Telescope find_files<CR>";
      options = {
        silent = true;
        desc = "[S]earch [F]iles";
      };
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = ":Telescope builtin<CR>";
      options = {
        silent = true;
        desc = "[S]earch [B]uiltins";
      };
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = ":Telescope grep_string<CR>";
      options = {
        silent = true;
        desc = "[S]earch current [W]ord";
      };
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = ":Telescope live_grep<CR>";
      options = {
        silent = true;
        desc = "[S]earch by [G]rep";
      };
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = ":Telescope resume<CR>";
      options = {
        silent = true;
        desc = "[S]earch [R]esume";
      };
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = ":Telescope oldfiles<CR>";
      options = {
        silent = true;
        desc = "Search Recent Files";
      };
    }
  ];
}
