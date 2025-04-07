{ pkgs, ... }:
{
  extraPlugins = with pkgs.awesomeNeovimPlugins; [
  ];
  extraConfigLua = "
      ";
}
