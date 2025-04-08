{
  plugins.indent-blankline = {
    enable = true;
    settings.exclude = {
      buftypes = [
        "nofile"
        "prompt"
        "floaterm"
        "quickfix"
        "terminal"
        "dashboard"
      ];
      filetypes = [
        ""
        "help"
        "yaml"
        "packer"
        "lspinfo"
        "checkhealth"
        "TelescopePrompt"
        "TelescopeResults"
      ];
    };
  };
}
