{
  programs.nixvim.plugins.neotree = {
    enable = true;
    popupBorderStyle = "rounded";
    filesystem.hijackNetrwBehavior = "open_current";
    window.popup.size = {
      width = "45%";
      height = "45%";
    };
  };
}
