{
  programs.nixvim.plugins.dashboard = {
    enable = true;
    settings = {
      theme = "hyper";
      change_to_vcs_root = true;
      hide = {
        statusline = true;
        tabline = true;
      };
      config = {
        mru.limit = 5;
        project.enable = true;
        footer = [
          ""
          "Make cool shit"
        ];
        # shortcut = [
        #   {
        #     key = "f";
        #     icon = " ";
        #     desc = "Files";
        #     group = "Label";
        #     icon_hl = "@variable";
        #     action.__raw = "function(path) require('fzf-lua').files() end";
        #   }
        #   {
        #     key = "n";
        #     icon = " ";
        #     desc = "New File";
        #     group = "Label";
        #     icon_hl = "@variable";
        #     action.__raw = "function(path) require('nui.input').open({position = '50%', relative = 'editor'}) end";
        #   }
        # ];
      };
    };
  };
}
