{
  programs.nixvim.imports = [
    ./windsurf.nix
    ./dictionary.nix
    ./ripgrep.nix
  ];
}
