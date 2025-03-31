{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      options.desc = "[F]ormat file";
      action.__raw = # lua
        ''
          function()
            require('conform').format { async = true, lsp_fallback = true }
          end
        '';
    }
  ];
}
