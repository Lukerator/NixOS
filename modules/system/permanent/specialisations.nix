{ lib, ... }:
{
  specialisation.gaming.configuration.hardware.nvidia.prime.reverseSync.enable = lib.mkForce true;
  specialisation.battery-saving.configuration.hardware.bluetooth.powerOnBoot = lib.mkForce false;
}
