{
  programs.nixvim.keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>sh";
      actions = ":Telescope help_tags<CR>";
      options = {
        silent = true;
        desc = "[S]earch [H]elp";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sk";
      actions = ":Telescope keymaps<CR>";
      options = {
        silent = true;
        desc = "[S]earch [K]eymaps";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sf";
      actions = ":Telescope find_files<CR>";
      options = {
        silent = true;
        desc = "[S]earch [F]iles";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>ss";
      actions = ":Telescope builtin<CR>";
      options = {
        silent = true;
        desc = "[S]earch [S]elect Telescope";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sw";
      actions = ":Telescope grep_string<CR>";
      options = {
        silent = true;
        desc = "[S]earch current [W]ord";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sg";
      actions = ":Telescope live_grep<CR>";
      options = {
        silent = true;
        desc = "[S]earch by [G]rep";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>sr";
      actions = ":Telescope resume<CR>";
      options = {
        silent = true;
        desc = "[S]earch [R]esume";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader><leader>";
      actions = ":Telescope oldfiles<CR>";
      options = {
        silent = true;
        desc = "Search Recent Files";
      };
    }
  ];
}
