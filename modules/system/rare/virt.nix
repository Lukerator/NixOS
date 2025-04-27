{ pkgs, ... }:
{
  boot.kernelModules = [ "kvm-intel" ];
  virtualisation.libvirtd.enable = true;
  users.users.luke.extraGroups = [ "libvirtd" ];
  environment = {
    systemPackages = [ pkgs.vagrant ];
    sessionVariables.VAGRANT_DEFAULT_PROVIDER = "libvirt";
  };
}
