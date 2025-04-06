{
  boot = {
    consoleLogLevel = 0;
    initrd.verbose = false;
    plymouth.enable = true;
    kernelParams = [
      "quiet"
      "udev.log_level=0"
    ];
    loader = {
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        efiSupport = true;
        useOSProber = true;
        devices = [ "nodev" ];
        extraEntries = ''
          menuentry "Reboot" { reboot }
          menuentry "Shut Down" { halt }
        '';
      };
    };
  };
}
