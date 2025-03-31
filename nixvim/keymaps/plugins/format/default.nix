{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action.__raw = # lua
                ''
                            function()
                                          require('conform').format { async = true, lsp_fallback = true }
                                                      end
                                                                '';
                                                                        options = {
                                                                                    desc = "[F]ormat buffer";
                                                                                            };
    }
  ];
}
