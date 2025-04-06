{
  config.vim = {
    telescope.mappings = {
      open = "<leader>st"; # Telescope builtins
      resume = "<leader>sr"; # Resume last search
      buffers = "<leader>sb"; # Search buffers
      helpTags = "<leader>sh"; # Search help tags
      liveGrep = "<leader>sg"; # Search live grep
      findFiles = "<leader>sf"; # Search files
      gitStash = "<leader>svx"; # Search git stashes
      gitStatus = "<leader>svs"; # Search git status
      gitBranches = "<leader>svb"; # Search git branches
      gitCommits = "<leader>svcw"; # Search git commits
      gitBufferCommits = "<leader>svcb"; # Search git buffer commits
    };
    keymaps = [
      {
        mode = "n"; # Makers the keymap available in normal mode
        silent = true; # Does not echo the keymap to the cmdline
        desc = "Recent files"; # Sets the descriptiuon for which-key
        key = "<leader><leader>"; # Sets the keymap to Space + Space
        action = ":Telescope oldfiles<CR>"; # Search recent files
      }
    ];
  };
}
