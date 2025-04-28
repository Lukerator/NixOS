{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    popupBorderStyle = "rounded";
    filesystem.hijackNetrwBehavior = "open_current";
    window.popup.size = {
      width = "60%";
      height = "60%";
    };
  };
}
