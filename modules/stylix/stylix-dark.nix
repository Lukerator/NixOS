{ pkgs, ... }:
{
  stylix = {
    enable = true;
    polarity = "dark";
    autoEnable = false;
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-macchiato.yaml";
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
    fonts.monospace = {
      name = "MonaspiceNe NF";
      package = pkgs.monaspace;
    };
    base16Scheme = {
      base00 = "1a1b26";
      base01 = "15161e";
      base02 = "414868";
      base03 = "444b6a";
      base04 = "a9b1d6";
      base05 = "c0caf5";
      base06 = "d5d6db";
      base07 = "f5f6fa";
      base08 = "f7768e";
      base09 = "ff9e64";
      base0A = "e0af68";
      base0B = "9ece6a";
      base0C = "7dcfff";
      base0D = "7aa2f7";
      base0E = "bb9af7";
      base0F = "c0caf5";
    };
  };
}
