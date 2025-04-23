{
  home.file.".local/share/PrismLauncher/accounts.json" = {
    text = builtins.toJSON {
      formatVersion = 3;
      accounts = [
        {
          entitlement = {
            canPlayMinecraft = true;
            ownsMinecraft = true;
          };
          type = "MSA";
        }
      ];
    };
  };
}
