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
        copyToClipboard
        fullAppDisplayMod
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
    };
}
