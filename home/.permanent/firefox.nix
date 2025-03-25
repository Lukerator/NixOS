{ pkgs, ... }:
let
  nurpkgs =
    import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz")
      { inherit pkgs; };
in
{
  programs.firefox = {
    enable = true;
    profiles."Luke" = {
      settings = {
        "browser.theme" = "dark";
      };
      extensions = {
        packages = with nurpkgs.repos.rycee.firefox-addons; [
          darkreader
          ublock-origin
        ];
      };
    };
  };
}
