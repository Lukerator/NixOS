{ pkgs, ... }:
{
  boot.kernelModules = [ "kvm-intel" ];
  users.users.luke.extraGroups = [ "vboxusers" ];
  virtualisation.virtualbox.host = {
    enable = true;
    enableKvm = true;
  };
  environment = {
    systemPackages = [ pkgs.virtualboxKvm ];
  };
}
