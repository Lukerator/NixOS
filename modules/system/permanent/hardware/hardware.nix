{
  config,
  lib,
  modulesPath,
  ...
}:
{
  swapDevices = [ ];
  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];
  boot = {
    extraModulePackages = [ ];
    initrd.kernelModules = [ ];
    kernelModules = [ "kvm-intel" ];
    initrd.availableKernelModules = [
      "xhci_pci"
      "thunderbolt"
      "vmd"
      "nvme"
      "usb_storage"
      "usbhid"
      "sd_mod"
    ];
  };
  fileSystems = {
    "/" = {
      fsType = "ext4";
      device = "/dev/disk/by-uuid/2e533752-4e64-4054-98d4-0a837ec000f3";
    };
    "/boot" = {
      fsType = "vfat";
      device = "/dev/disk/by-uuid/4711-2877";
      options = [
        "dmask=0077"
        "fmask=0077"
      ];
    };
  };
}
