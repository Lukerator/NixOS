{ pkgs, ... }:
{
  users.users.luke = {
    isNormalUser = true;
    description = "Luke";
    shell = pkgs.nushell;
    extraGroups = [
      "audio"
      "networkmanager"
      "video"
      "wheel"
    ];
  };
}
