{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "hyper";
      change_to_vcs_root = true;
      hide = {
        winbar = true;
        tabline = true;
        shortcut = true;
        statusline = true;
      };
      config = {
        mru.limit = 5;
        project.enable = true;
        footer = [
          ""
          "\"Talk is cheap. Show me the code.\" – Linus Torvalds"
        ];
        shortcut = [
          {
            key = "r";
            icon = " ";
            desc = "Recents";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').oldfiles() end";
          }
          {
            key = "f";
            icon = " ";
            desc = "Files";
            group = "Label";
            icon_hl = "@variable";
            action.__raw = "function() require('fzf-lua').files() end";
          }
          {
            key = "n";
            icon = " ";
            desc = "New";
            group = "Label";
            icon_hl = "@variable";
            action = ":enew";
          }
        ];
      };
    };
  };
}
