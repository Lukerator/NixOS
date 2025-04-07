{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = with pkgs.awesomeNeovimPlugins; [
    ];
    extraConfigLua = "
      ";
  };
}
