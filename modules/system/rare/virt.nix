{ pkgs, ... }:
{
  boot.kernelModules = [ "kvm-intel" ];
  users.users.luke.extraGroups = [ "vboxusers" ];
  environment.systemPackages = [ pkgs.virtualboxKvm ];
  virtualisation.virtualbox.host = {
    enable = true;
    enableKvm = true;
    addNetworkInterface = false;
  };
}
