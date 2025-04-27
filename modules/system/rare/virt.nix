{ pkgs, ... }:
{
  programs.virt-manager.enable = true;
  users.users.luke.extraGroups = [ "libvirtd" ];
  environment.systemPackages = [ pkgs.virtiofsd ];
  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
