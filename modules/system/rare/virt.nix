{
  users.users.luke.extraGroups = [ "libvirtd" ];
  programs.virt-manager.enable = true;
  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
