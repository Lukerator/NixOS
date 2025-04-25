{ pkgs, ... }:
{
  programs.gamemode.enable = true;
  environment.systemPackages = with pkgs; [
    (prismlauncher.override {
      # Add binary required by some mod
      additionalPrograms = [ ];

      # Change Java runtimes available to Prism Launcher
      jdks = [
        zulu
        zulu17
      ];
    })
  ];
}
