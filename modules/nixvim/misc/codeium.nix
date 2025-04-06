{
  programs.nixvim.autoCmd = [
    {
      event = [ "TextChangedI" ];
      desc = "Codeium auto refresh";
      callback.__raw = # lua
        ''
          function()
            vim.fn["CodeiumComplete"]()
          end
        '';
    }
  ];
}
