{
  programs.nixvim.colorschemes = {
    tokyonight = {
      enable = true;
      settings.style = "night";
    };
    catppuccin = {
      enable = false;
      settings.flavour = "macchiato";
    };
  };
}
