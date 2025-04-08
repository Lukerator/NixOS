{
  plugins.indent-blankline = {
    enable = true;
    settings.exclude = {
      buftypes = [
        "dashboard"
        "terminal"
        "floaterm"
      ];
      filetypes = [
        ""
        "checkhealth"
        "help"
        "lspinfo"
        "packer"
        "TelescopePrompt"
        "TelescopeResults"
        "yaml"
      ];
    };
  };
}
