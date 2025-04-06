{ lib, ... }:
{
  specialisation.gaming.configuration.hardware.nvidia.prime.reverseSync.enable = lib.mkForce true;
  specialisation.battery-saving.configuration.hardware = {
    bluetooth.powerOnBoot = false;
    nvidia.prime.offload = {
      enable = lib.mkForce true;
      enableOffloadCmd = lib.mkForce true;
    };
  };
}
