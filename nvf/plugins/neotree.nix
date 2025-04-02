{
  programs.nvf.settings.vim = {
    filetree.neo-tree.enable = true;
    keymaps = [
      {
        key = "\\";
        mode = "n";
        silent = true;
        desc = "NeoTree reveal";
        action = ":Neotree toggle reveal<CR>";
      }
    ];
  };
}
