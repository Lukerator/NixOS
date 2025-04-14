{ lib, pkgs, ... }:
{
  plugins.windsurf-nvim = {
    enable = true;
    settings.tools = {
      curl = lib.getExe pkgs.curl;
      gzip = lib.getExe pkgs.gzip;
      uname = lib.getExe' pkgs.coreutils "uname";
      uuidgen = lib.getExe' pkgs.util-linux "uuidgen";
    };
  };
}
