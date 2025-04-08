{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = true;
      };
      ensureInstalled = [
        "cpp"
        "lua"
        "nix"
        "html"
        "typst"
        "python"
        "markdown"
      ];
    };
  };
}
