{
  programs.nvf.settings.vim.debugger.nvim-dap = {
    enable = true;
    mappings = {
      # Basic debugging keymaps, feel free to change to your liking!
      stepInto = "<F1>";
      stepOver = "<F2>";
      stepOut = "<F3>";
      continue = "<F5>";
      toggleDapUI = "<F7>";
      toggleBreakpoint = "<leader>b>";
    };

    # Dap UI setup
    ui = {
      enable = true;
      setupOpts = {
        # Set icons to characters that are more likely to work in every terminal.
        #    Feel free to remove or use ones that you like more! :)
        #    Don't feel like these are good choices.
        icons = {
          expanded = "▾";
          collapsed = "▸";
          currentFrame = "*";
        };
        controls.icons = {
          pause = "⏸";
          play = "▶";
          step_into = "⏎";
          step_over = "⏭";
          step_out = "⏮";
          step_back = "b";
          run_last = "▶▶";
          terminate = "⏹";
          disconnect = "⏏";
        };
      };
    };
  };
}
