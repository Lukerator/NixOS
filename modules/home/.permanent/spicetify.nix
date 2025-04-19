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
        volumePercentage
        wikify
      ];
      enabledCustomApps = with spices.apps; [
        lyricsplus
      ];
    };
}
