{ lib, ... }:
{
  specialisation.gaming.configuration.hardware = {
    bluetooth.powerOnBoot = lib.mkForce true;
    nvidia.prime.reverseSync.enable = lib.mkForce true;
  };
  specialisation.battery.configuration.hardware.nvidia.prime.offload = {
    enable = lib.mkForce true;
    enableOffloadCmd = lib.mkForce true;
  };
}
