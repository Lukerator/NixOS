{ lib, ... }:
{
  /*
    =====================================================================
    ==================== READ THIS BEFORE CONTINUING ====================
    =====================================================================
    ========                                    .-----.          ========
    ========         .----------------------.   | === |          ========
    ========         |.-""""""""""""""""""-.|   |-----|          ========
    ========         ||                    ||   | === |          ========
    ========         ||   KICKSTART.NVF    ||   |-----|          ========
    ========         ||                    ||   | === |          ========
    ========         ||                    ||   |-----|          ========
    ========         ||:Tutor              ||   |:::::|          ========
    ========         |'-..................-'|   |____o|          ========
    ========         `"")----------------(""`   ___________      ========
    ========        /::::::::::|  |::::::::::\  \ no mouse \     ========
    ========       /:::========|  |==hjkl==:::\  \ required \    ========
    ========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
    ========                                                     ========
    =====================================================================
    =====================================================================

    What is Kickstart?

      Kickstart.nvf is *not* a distribution.

      Kickstart.nvf is a starting point for your own configuration.

        The goal is that you can read every line of code, top-to-bottom, understand
        what your configuration is doing, and modify it to suit your needs.

        Once you've done that, you can start exploring, configuring and tinkering to
        make Neovim your own! That might mean leaving Kickstart just the way it is for a while
        or immediately breaking it into modular pieces. It's up to you!

        If you don't know anything about Lua or Nix, I recommend taking some time to read through
        a guide. One possible example which will only take 10-15 minutes:
          - https://learnxinyminutes.com/docs/lua/
          - https://nixos.org/learn/

        After understanding a bit more about Lua, you can use `:help lua-guide` as a
        reference for how Neovim integrates Lua.
        - :help lua-guide
        - (or HTML version): https://neovim.io/doc/user/lua-guide.html
        - (Nix tutorial): https://nix.dev/tutorials/first-steps/

      Kickstart Guide:

        TODO: The very first thing you should do is to run the command `:Tutor` in Neovim.

          If you don't know what this means, type the following:
            - <escape key>
            - :
            - Tutor
            - <enter key>

          (If you already know the Neovim basics, you can skip this step.)

        Once you've completed that, you can continue working through **AND READING** the rest
        of the kickstart init.lua.

        Next, run AND READ `:help`.
          This will open up a help window with some basic information
          about reading, navigating and searching the builtin help documentation.

          This should be the first place you go to look when you're stuck or confused
          with something. It's one of my favorite Neovim features.

          MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
          which is very useful when you're not exactly sure of what you're looking for.

        I have left several `:help X` comments throughout the init.lua
          These are hints about where to find more information about the relevant settings,
          plugins or Neovim features used in Kickstart.

         NOTE: Look for lines like this

          Throughout the file. These are for you, the reader, to help you understand what is happening.
          Feel free to delete them once you know what you're doing, but they should serve as a guide
          for when you are first encountering a few different constructs in your Neovim config.

      If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

      I hope you enjoy your Neovim journey,
      - TJ (Kikstart.nvim)
      - Luke (Kickstart.nvf)

      P.S. You can delete this when you're done too. It's your config now! :)
  */

  imports = [

  ];
  programs.nvf = {

    # Enables the nvf program
    enable = true;

    settings.vim = {

      # Sync clipboard between OS and Neovim.
      #  Schedule the setting after `UiEnter` because it can increase startup-time.
      #  Remove this option if you want your OS clipboard to remain independent.
      #  See `:help 'clipboard'`
      luaConfigPost = # lua
        ''
          vim.schedule(function()
            vim.opt.clipboard = 'unnamedplus'
          end)
        '';

      globals = {
        # Set <space> as the leader key
        # See `:help mapleader`
        #  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
        mapleader = " ";
        maplocalleader = " ";

        # Set to true if you have a Nerd Font installed and selected in the terminal
        have_nerd_font = false;
      };

      # [[ Setting options ]]
      # See `:help vim.opt`
      # NOTE: You can change these options as you wish!
      #  For more options, you can see `:help option-list`
      options = {

        # Make line numbers default
        number = true;
        # You can also add relative line numbers, to help with jumping.
        #  Experiment for yourself to see if you like it!
        # relativenumber = true;

        # Enable mouse mode, can be useful for resizing splits for example!
        mouse = "a";

        # Don't show the mode, since it's already in the status line
        showmode = false;

        # Enable break indent
        breakindent = true;

        # Save undo history
        undofile = true;

        # Case insensitive searching UNLESS /C or one or more capital letters in the search term
        ignorecase = true;
        smartcase = true;

        # Keep signcolumn on by default
        signcolumn = "yes";

        # Decrease update time
        updatetime = 250;

        # Decrease mapped sequence wait time
        timeoutlen = 300;

        # Configure how new splits should be opened
        splitright = true;
        splitbelow = true;

        # Sets how neovim will display certain whitespace characters in the editor.
        #  See `:help 'list'`
        #  and `:help 'listchars'`
        list = true;
        listchars = "tab:» , trail:·, nbsp:␣";

        # Preview substitutions live, as you type!
        inccommand = "split";

        # Show which line your cursor is on
        cursorline = true;

        # Minimal number of screen lines to keep above and below the cursor.
        scrolloff = 10;

        # If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
        # instead raise a dialog asking if you wish to save the current file(s)
        # See `:help 'confirm'`
        confirm = true;
      };

      # [[ Basic Keymaps ]]
      #  See `:help vim.keymap.set()`
      keymaps = [

        # Clear highlights
        #  See `:help hlsearch`
        {
          mode = "n";
          key = "<esc>";
          action = "<cmd>nohlsearch<CR>";
        }

        # Diagnostic keymaps
        {
          lua = true;
          mode = "n";
          key = "<leader>q";
          action = "vim.diagnostic.setloclist";
          desc = "Open diagnostic [Q]uickfix list";
        }

        # Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
        # For people to discover. Otherwise, you would normally need to press <C-\\><C-n>, which
        # is not what someone will guess without a bit more experience.

        # NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
        # or just use <C-\><C-n> to exit terminal mode
        {
          mode = "t";
          key = "<Esc><Esc>";
          action = "<C-\\><C-n>";
          desc = "Exit terminal mode";
        }

        # TIP: Disable arrow keys in normal mode
        # { mode = "n"; key = "<Left>"; action = "<cmd>echo 'Use h to move!!'"; }
        # { mode = "n"; key = "<Right>"; action = "<cmd>echo 'Use l to move!!'"; }
        # { mode = "n"; key = "<Up>"; action = "<cmd>echo 'Use k to move!!'"; }
        # { mode = "n"; key = "<Down>"; action = "<cmd>echo 'Use j to move!!'"; }

        # Keybinds to make split navigation easier.
        # Use CTRL+<hjkl> to switch between windows

        # See `:help wincmd` for a list of all window commands
        {
          mode = "n";
          key = "<C-h>";
          action = "<C-w><C-h>";
          desc = "Move focus to the left window";
        }
        {
          mode = "n";
          key = "<C-l>";
          action = "<C-w><C-l>";
          desc = "Move focus to the right window";
        }
        {
          mode = "n";
          key = "<C-j>";
          action = "<C-w><C-j>";
          desc = "Move focus to the lower window";
        }
        {
          mode = "n";
          key = "<C-k>";
          action = "<C-w><C-k>";
          desc = "Move focus to the upper window";
        }

        # NOTE: Some terminals have coliding keymaps or are not able to send distinct keycodes
        # { mode = "n"; key = "<C-S-h>"; action = "<C-w>H"; desc = "Move window to the left"; }
        # { mode = "n"; key = "<C-S-l>"; action = "<C-w>L"; desc = "Move window to the right"; }
        # { mode = "n"; key = "<C-S-j>"; action = "<C-w>J"; desc = "Move window to the bottom"; }
        # { mode = "n"; key = "<C-S-k>"; action = "<C-w>K"; desc = "Move window to the top";}
      ];

      # [[ Basic Autocommands ]]
      # See `:help lua-guide-autocommands`

      augroups = [
        {
          enable = true;
          name = "kickstart-highlight-yank";
          clear = true;
        }
      ];
      autocmds = [
        # Highlight when yanking (copying) text
        #  Try it with `yap` in normal mode
        #  See `:help vim.highlight.on_yank()`
        {
          enable = true;
          desc = "Highlight when yanking (copying) text";
          group = "kickstart-highlight-yank";
          callback = lib.mkLuaInline ''
            function()
              vim.highlight.on_yank()
            end
          '';
        }
      ];

      # [[ Configure and install plugins ]]

      # To check the current status of your plugins, run
      #   :Lazy
    };
  };
}
