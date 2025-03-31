{
  programs.nixvim.keymaps = [
    {
      mode = "";
      key = "<leader>f";
      options.desc = "[F]ormat buffer";
      action.__raw = # lua
        ''
          function()
            require('conform').format { async = true, lsp_fallback = true }
          end
        '';
    }
  ];
}
