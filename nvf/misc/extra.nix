{
  programs.nvf.settings.vim.luaConfigPost = ''
    vim.schedule(function()
      vim.opt.clipboard = "unnamedplus"
    end)
  '';
}
