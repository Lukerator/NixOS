{ pkgs, ... }:
{
  boot.kernelModules = [ "kvm-intel" ];
  users.users.luke.extraGroups = [ "vboxusers" ];
  environment.systemPackages = [
    pkgs.gnome-boxes
    pkgs.qemu_kvm
  ];
  virtualisation.virtualbox.host = {
    enable = true;
    enableKvm = true;
    addNetworkInterface = false;
  };
}
