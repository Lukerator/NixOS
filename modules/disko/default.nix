{
  disko.devices.disk.vdb = {
    type = "disk";
    # device = "/dev/disk/by-uuid/2e533752-4e64-4054-98d4-0a837ec000f3";
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
