{ lib, ... }:
{
  specialisation.gaming.configuration.hardware = {
    bluetooth.powerOnBoot = lib.mkForce true;
    nvidia.prime = {
      reverseSync.enable = lib.mkForce true;
      offload = {
        enable = lib.mkForce false;
        enableOffloadCmd = lib.mkForce false;
      };
    };
  };
}
