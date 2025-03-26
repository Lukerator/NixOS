{
  programs.nvf.settings.config.vim.tabline.bufferline = {
    enable = true;
    setupOpts.options = {
      show_close_icon = false;
      show_buffer_close_icons = false;
    };
    mappings = {
      cycleNext = "<Tab>";
      cyclePrevious = "<S-Tab>";
      closeCurrent = "<leader>x";
    };
  };
}
