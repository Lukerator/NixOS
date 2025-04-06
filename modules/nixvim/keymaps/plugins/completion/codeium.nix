{
  programs.nixvim.keymaps = [
    {
      mode = "i";
      key = "<leader><BS>";
      options = {
        silent = true;
        noremap = true;
      };
      action.__raw = ''
        function()
          vim.api.nvim_feedkeys(" ", " i ", false)
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<BS>", true, true, true), "i", false)
          require("cmp").complete()
        end
      '';
    }
  ];
}
