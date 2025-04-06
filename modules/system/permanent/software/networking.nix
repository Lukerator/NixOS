{
  networking = {
    hostName = "Luke-PC";
    networkmanager = {
      enable = true;
      ensureProfiles.profiles = {
        home-wifi = {
          connection = {
            type = "wifi";
            id = "home-wifi";
          };
          wifi = {
            ssid = "DIGI-02111259";
            mode = "infrastructure";
          };
          wifi-security = {
            psk = "WtMo4hnA";
            key-mgmt = "wpa-psk";
          };
        };
        school-wifi = {
          connection = {
            type = "wifi";
            id = "school-wifi";
          };
          wifi = {
            ssid = "elevi";
            mode = "infrastructure";
          };
          wifi-security = {
            psk = "elevi2021";
            key-mgmt = "wpa-psk";
          };
        };
      };
    };
  };
}
