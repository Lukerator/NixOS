{ pkgs, inputs, ... }:
{
  programs.spicetify =
    let
      spices = inputs.spicetify.legacyPackages.${pkgs.system};
    in
    {
      enable = true;
      enabledExtensions = with spices.extensions; [
        adblock
        adblockify
        autoSkip
        beautifulLyrics
        betterGenres
        copyToClipboard
        fullAppDisplay
        fullScreen
        hidePodcasts
        history
        phraseToPlaylist
        playNext
        playlistIcons
        powerBar
        seekSong
        showQueueDuration
        shuffle
        simpleBeautifulLyrics
        volumePercentage
        wikify
        writeify
      ];
      enabledCustomApps = with spices.apps; [
        betterLibrary
        historyInSidebar
        lyricsPlus
        marketplace
        nameThatTune
      ];
    };
}
