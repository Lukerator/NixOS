{
  disko.devices.disk.vdb = {
    type = "disk";
    device = "/dev/disk/by-id/nvme-HFM001TD3JX013N_CY0CN03761CC1CJ1H";
    content = {
      type = "gpt";
      partitions = {
        root = {
          size = "100%";
          content = {
            format = "ext4";
            mountpoint = "/";
            type = "filesystem";
          };
        };
        ESP = {
          type = "EF00";
          size = "256M";
          content = {
            format = "vfat";
            type = "filesystem";
            mountpoint = "/boot";
            mountOptions = [ "umask=0077" ];
          };
        };
      };
    };
  };
}
