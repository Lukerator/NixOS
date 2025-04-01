{
  programs.nixvim.plugins = {
    mini.modules.files = {
      windows.width_focus = 50;
      options = {
        permanent_delete = true;
        use_as_default_explorer = true;
      };
    neo-tree = {
      enable = true;
      popupBorderStyle = "rounded";
      filesystem.hijackNetrwBehavior = "open_current";
      window.popup.size = {
        width = "45%";
        height = "45%";
      };
    };
  };
}
