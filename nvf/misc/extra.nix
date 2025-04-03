{
  programs.nvf.settings.vim.luaConfigPost = ''
    vim.schedule(function()
      vim.opt.clipboard = "unnamedplus"
    end)
  ''; # Sets the clipboard to unnamed with a schedule for better performance
}
