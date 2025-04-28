{ lib, pkgs, ... }:
{
  programs.nixvim.plugins.windsurf-nvim = {
    enable = true;
    package = pkgs.vimPlugins.windsurf-nvim;
    settings.tools = {
      curl = lib.getExe pkgs.curl;
      gzip = lib.getExe pkgs.gzip;
      uname = lib.getExe' pkgs.coreutils "uname";
      uuidgen = lib.getExe' pkgs.util-linux "uuidgen";
    };
  };
}
