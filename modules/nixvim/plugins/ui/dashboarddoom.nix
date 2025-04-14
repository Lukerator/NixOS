{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "hyper";
      change_to_vcs_root = true;
      hide = {
        winbar = true;
        tabline = true;
        statusline = true;
      };
      config = {
        mru.limit = 5;
        project.enable = true;
        footer = [
          "\"Talk is cheap. Show me the code.\" – Linus Torvalds"
        ];
        shortcut = [
          {
            key = "r";
            icon = " ";
            desc = "Recent Files";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').oldfiles() end";
          }
          {
            key = "f";
            icon = " ";
            desc = "Find File (cwd)";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').files() end";
          }
          {
            key = "n";
            icon = " ";
            desc = "New File";
            group = "Label";
            icon_hl = "@variable";
            action = ":enew";
          }
          {
            key = "w";
            icon = " ";
            desc = "Find Word";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').live_grep() end";
          }
          {
            key = "p";
            icon = "";
            desc = "Recent Projects";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').projects() end";
          }
        ];
      };
    };
  };
}
