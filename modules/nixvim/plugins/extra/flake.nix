{ pkgs, input, ... }:
{
  overlays = [ input.awesome-neovim-plugins.overlays.default ];
  extraPlugins = with pkgs.awesomeNeovimPlugins; [
    exercism-nvim
  ];
  extraConfigLua = "
    require('exercism-nvim').setup(
      add_default_keybindings = false
    )
  ";
}
