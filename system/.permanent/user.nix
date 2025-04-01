{ pkgs, ... }:
{
  users.users.luke = {
    # shell = pkgs.zsh;
    shell = pkgs.nushell;
    isNormalUser = true;
    description = "Luke";
    extraGroups = [
      "audio"
      "networkmanager"
      "video"
      "wheel"
    ];
  };
}
