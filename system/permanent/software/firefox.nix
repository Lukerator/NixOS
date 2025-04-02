{
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" ];
    policies = {
      DisablePocket = true;
      SearchBar = "unified";
      DisableAccounts = true;
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      DisableFirefoxAccounts = true;
      DontCheckDefaultBrowser = true;
      DisplayBookmarksToolbar = "never";
    };
  };
}
