{ lib, pkgs, ... }:
let
  # Set to true if you have a Nerd Font installed and selected in the terminal
  nerd_fonts = false;
in
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
        - (NVF documentation): https://notashelf.github.io/nvf/options.html
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
    # Here are some example plugins that I've included in the Kickstart repository.
    # Uncomment any of the lines below to enable them.

    # ./plugins/autopairs.nix
    # ./plugins/debug.nix
    # ./plugins/gitsigns.nix
    # ./plugins/indentline.nix
    # ./plugins/lint.nix
    # ./plugins/neotree.nix

    # NOTE: The import below can automatically add your own plugins, configuration, etc from `./plugins/custom/*.nix`
    #    This is the easiest way to modularize your config.

    # Uncomment the following line and add your plugins to `./plugins/custom/` to get going
    # ./plugins/custom.nix
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
        have_nerd_font = nerd_fonts;
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
        listchars = "tab:» ,trail:·,nbsp:␣";

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
          action = ":nohlsearch<CR>";
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
        # { mode = "n"; key = "<Left>"; action = ":echo 'Use h to move!!'"; }
        # { mode = "n"; key = "<Right>"; action = ":echo 'Use l to move!!'"; }
        # { mode = "n"; key = "<Up>"; action = ":echo 'Use k to move!!'"; }
        # { mode = "n"; key = "<Down>"; action = ":echo 'Use j to move!!'"; }

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

        # For the Telescope plugin
        # See `:help telescope.builtin`
        {
          mode = "n";
          silent = true;
          key = "<leader>sh";
          desc = "[S]earch [H]elp";
          action = ":Telescope help_tags<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sk";
          desc = "[S]earch [K]eymaps";
          action = ":Telescope keymaps<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sf";
          desc = "[S]earch [F]iles";
          action = ":Telescope find_files<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>ss";
          desc = "[S]earch [S]elect Telescope";
          action = ":Telescope builtin<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sw";
          desc = "[S]earch current [W]ord";
          action = ":Telescope grep_string<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sg";
          desc = "[S]earch by [G]rep";
          action = ":Telescope live_grep<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sd";
          desc = "[S]earch [D]iagnostics";
          action = ":Telescope diagnostics<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>sr";
          desc = "[S]earch [R]esume";
          action = ":Telescope resume<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader>s.";
          desc = "[S]earch Recent Files ('.' for repeat)";
          action = ":Telescope oldfiles<CR>";
        }
        {
          mode = "n";
          silent = true;
          key = "<leader><leader>";
          desc = "[S]earch [B]uffers";
          action = ":Telescope buffers<CR>";
        }
        # Slightly advanced example of overriding default behavior and theme
        {
          lua = true;
          mode = "n";
          silent = true;
          key = "<leader>/";
          desc = "[/] Fuzzily search in current buffer";
          action = #lua
          ''
            function()
              require('telescope.builtin').current_buffer_fuzzy_find(
                require('telescope.themes').get_dropdown {
                  winblend = 10,
                  previewer = false
                }
              )
            end
          '';
        }
        # See `:help telescope.builtin.live_grep()` for information about particular keys
        {
          lua = true;
          mode = "n";
          silent = true;
          key = "<leader>s/";
          desc = "[S]earch [/] in Open Files";
          action = #lua
          ''
            function()
              require('telescope.builtin').live_grep {
                grep_open_files = true,
                prompt_title = "Live grep in open files"
              }
            end
          '';
        }
        {
          lua = true;
          mode = "n";
          silent = true;
          key = "<leader>sn";
          desc = "[S]earch [N]eovim Files";
          action = #lua
          ''
            function()
              require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config'}
            end
          '';
        }
        
        # LSP keymaps
        # Jump to the definition of the word under your cursor.
        #  This is where a variable was first declared, or where a function is defined, etc.
        #  To jump back, press <C-t>.
        {
          lua = true;
          mode = "n";
          key = "gd";
          desc = "[G]oto [D]efinition";
          action = #lua
          ''
            require("telescope.builtin").lsp_definitions()
          '';
        }
        # Find references for the word under your cursor.
        {
          lua = true;
          mode = "n";
          key = "gr";
          desc = "[G]oto [R]eferences";
          action = #lua
          ''
            require("telescope.builtin").lsp_references()
          '';
        }
        # Jump to the implementation of the word under your cursor.
        #  Useful when your language has ways of declaring types without an actual implementation.
        {
          lua = true;
          mode = "n";
          key = "gI";
          desc = "[G]oto [I]mplementation";
          action = #lua
          ''
            require("telescope.builtin").lsp_implementations()
          '';
        }
        # Jump to the type of the word under your cursor.
        #  Useful when you're not sure what type a variable is and you want to see
        #  the definition of its *type*, not where it was *defined*.
        {
          lua = true;
          mode = "n";
          key = "<leader>D";
          desc = "[T]ype [D]efinition";
          action = #lua
          ''
            require("telescope.builtin").lsp_type_definitions()
          '';
        }
        # Fuzzy find all the symbols in your current document.
        #  Symbols are things like variables, functions, types, etc.
        {
          lua = true;
          mode = "n";
          key = "<leader>ds";
          desc = "[D]ocument [S]ymbols";
          action = #lua
          ''
            require("telescope.builtin").lsp_document_symbols()
          '';
        }
        # Fuzzy find all the symbols in your current workspace.
        #  Similar to document symbols, except searches over your entire project.
        {
          lua = true;
          mode = "n";
          key = "<leader>ws";
          desc = "[W]orkspace [S]ymbols";
          action = #lua
          ''
            require("telescope.builtin").lsp_workspace_symbols()
          '';
        }
        # Rename the variable under your cursor.
        #  Most Language Servers support renaming across files, etc.
        {
          lua = true;
          mode = "n";
          key = "<leader>rn";
          desc = "[R]ename";
          action = #lua
          ''
            vim.lsp.buf.rename()
          '';
        }
        # Execute a code action, usually your cursor needs to be on top of an error
        # or a suggestion from your LSP for this to activate.
        {
          lua = true;
          mode = [ "n" "x" ];
          key = "<leader>ca";
          desc = "[C]ode [A]ction";
          action = #lua
          ''
            vim.lsp.buf.code_action()
          '';
        }
        # WARN: This is not Goto Definition, this is Goto Declaration.
        #  For example, in C this would take you to the header.
        {
          lua = true;
          mode = "n";
          key = "gD";
          desc = "[G]oto [D]eclaration";
          action = #lua
          ''
            vim.lsp.buf.declaration()
          '';
        }
      ];

      # [[ Basic Autocommands ]]
      # See `:help lua-guide-autocommands`

      augroups = [
        {
          enable = true;
          name = "kickstart-highlight-yank";
          clear = true;
        }
        {
          enable = true;
          name = "kickstart-lsp-highlight";
          clear = false;
        }
      ];

      autocmds = [
        # Highlight when yanking (copying) text
        #  Try it with `yap` in normal mode
        #  See `:help vim.highlight.on_yank()`
        {
          enable = true;
          event = [ "TextYankPost" ];
          group = "kickstart-highlight-yank";
          desc = "Highlight when yanking (copying) text";
          callback = lib.generators.mkLuaInline #lua
            "function() vim.highlight.on_yank() end";
        }
        {
          enable = true;
          group = "kickstart-lsp-highlight";
          event = [ "CursorHold" "CursorHoldI" ];
          callback = lib.generators.mkLuaInline #lua
            "vim.lsp.buf.document_highlight";
        }
        {
          enable = true;
          group = "kickstart-lsp-highlight";
          event = [ "CursorMoved" "CursorMovedI" ];
          callback = lib.generators.mkLuaInline #lua
            "vim.lsp.buf.clear_references";
        }
        {
          enable = true;
          event = [ "LspDetach" ];
          group = "kickstart-lsp-highlight";
          callback = lib.generators.mkLuaInline #lua
            "function(event) vim.lsp.buf.clear_references() vim.api.nvim_clear_autocmds({ group = 'kickstart-lsp-highlight', buffer = event.buf }) end";
        }
      ];

      # [[ Configure and install plugins ]]

      # This is different from the normal neovim because plugins
      # can be installed both from NixPkgs and from NVF

      # NOTE: Here is where you install your NixPkgs plugins.

      # NOTE: Plugins can be also added from github, either through lib.fetchFromGitHub or
      # with a flake like https://github.com/developing-today-forks/nixpkgs-vim-extra-plugins
      extraPlugins = with pkgs.vimPlugins; {
        vim-sleuth = {
          package = vim-sleuth;
          # Use `setup = "require('').setup()" to configure a plugin, forcing the plugin to be loaded.`
          # You can also use `after = [""]` to place the plugin configuration after another plugin
        };
      };

      # Here is a more advanced example where we pass configuration options to `gitsigns.nvim`.

      # See `:help gitsigns` to understand what the configuration keys do
      git.gitsigns = {
        # Adds git related signs to the gutter, as well as utilities for managing changes
        enable = true;
        setupOpts = {
          signs = {
            add.text = "+";
            change.text = "~";
            delete.text = "_";
            topdelete.text = "‾";
            changedelete.text = "~";
          };
        };
      };
      binds.whichKey = {
        enable = true;
        setupOpts = {
          delay = 0;
          icons = lib.mkMerge [
            (lib.mkIf nerd_fonts {
              mappings = true;
              keys = {};
            })
            (lib.mkIf (!nerd_fonts) {
              mappings = false;
              keys = {
                Up = "<Up>";
                Down = "<Down>";
                Left = "<Left>";
                Right = "<Right>";
                C = "<C-…>";
                M = "<M-…>";
                D = "<D-…>";
                S = "<S-…>";
                CR = "<CR>";
                Esc = "<Esc>";
                ScrollWheelDown = "<ScrollWheelDown>";
                ScrollWheelUp = "<ScrollWheelUp>";
                NL = "<NL>";
                BS = "<BS>";
                Space = "<Space>";
                Tab = "<Tab>";
                F1 = "<F1>";
                F2 = "<F2>";
                F3 = "<F3>";
                F4 = "<F4>";
                F5 = "<F5>";
                F6 = "<F6>";
                F7 = "<F7>";
                F8 = "<F8>";
                F9 = "<F9>";
                F10 = "<F10>";
                F11 = "<F11>";
                F12 = "<F12>";
              };
            })
          ];
        };
      };
      visuals.nvim-web-devicons.enable = nerd_fonts;
      # NOTE: NVF plugins meet their dependencies automatically, NixPkgs plugins do not.
      telescope = {
        # Telescope is a fuzzy finder that comes with a lot of different things that
        # it can fuzzy find! It's more than just a "file finder", it can search
        # many different aspects of Neovim, your workspace, LSP, and more!

        # The easiest way to use Telescope, is to start by doing something like:
        # :Telescope help_tags

        # After running this command, a window will open up and you're able to
        # type in the prompt window. You'll see a list of `help_tags` options and
        # a corresponding preview of the help.

        # Two important keymaps to use while in Telescope are:
        #  - Insert mode: <c-/>
        #  - Normal mode: ?

        # This opens a window that shows you all of the keymaps for the current
        # Telescope picker. This is really useful for discoveering what Telescope
        # can do as well as how to actually do it!
        enable = true;
      };
      # Main LSP Configuration
      # This is very different from the default Neovim configuration as NVF automates
      # a lot of things that the users usually need to configure manually
      lsp = {
        # Brief aside: **What is LSP?**

        # LSP is an initialism you've probably heard, but might not understand what it is.
        
        # LSP stands for Language Server Protocol. It's a protocol that helps editors
        # and language tooling communicate in a standardized fashion.

        # In general, you have a "server" which is some tool built to understand a particular
        # language (such as `gopls`, `lua_ls`, `rust_analyzer`, etc.). These Language Servers
        # (sometimes called LSP servers, but that's kind of like ATM Machine) are standalone
        # processes that communicate with some "client" - in this case, Neovim!

        # LSP provides Neovim with features like:
        #  - Go to definition
        #  - Find references
        #  - Autocompletion
        #  - Symbol Search
        #  - and more!

        # Thus, Language Servers are external tools that must be installed separately from
        # Neovim. This is where `mason` and related plugins come into play.

        # If you're wondering about lsp vs treesitter, you can check out the wonderfully
        # and elegantly composed help section, `:help lsp-vs-treesitter`
        enable = true;
      };
      languages = {
        enableLSP = true;
        enableFormat = true;
        enableTreesitter = true;

        # Enable the following language servers
        #  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
        lua.enable = true;
      };
      formatter.conform-nvim = {
        enable = true;
        setupOpts = {
          notify_on_error = false;
          format_on_save = {
            timeout_ms = 500;
            lsp_format = "fallback";
          };
          formatters_by_ft = {
            lua = [ "stylua" ];
            # Conform can also run multiple formatters sequentially
            # python = [ "isort", "black" ];
          };
        };
      };
      # Useful status updates for LSP.
      visuals.fidget-nvim.enable = true;

      # Autocompletion
      snippets.luasnip.enable = true;
      autocomplete.nvim-cmp = {
        enable = true;
        setupOpts.completion.completeopt = "menu,menuone,noinsert";
        sources = {
          nvim-cmp = null;
          path = [ "path" ];
          buffer = [ "buffer" ];
          luasnip = [ "luasnip" ];
          nvim_lsp = [ "nvim_lsp" ];
        };
        mappings = {
          # For an understanding of why these mappings were
          # chosen, you will need to read `:help ins-completion`

          # No, but seriously. Please read `:help ins-completion`, it is really good!

          next = "<C-n>";
          previous = "<C-p>";

          # Scroll the documentation window [b]ack / [f]orward
          scrollDocsUp = "<C-f>";
          scrollDocsDown = "<C-b>";

          # Accept ([y]es) the completion.
          #  This will auto-import if your LSP supports it.
          #  This will expand snippets if the LSP sent a snippet.
          confirm = "<C-y>";

          # Manually trigger a completion from nvim-cmp.
          #   Generally you don't need this, because nvim-cmp will display
          #   completions whenever it has completion options available.
          complete = "<C-Space>";

          # If you prefer more traditional completion keymaps,
          # you can uncomment the following lines
          # confirm = "<CR>";
          # next = "<Tab>";
          # previous = "<S-Tab>";
        };
      };

      # You can easily change to a different colorscheme.
      # Just change the name of the colorscheme option below.

      # If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
      theme = {
        enable = true;
        name = "tokyonight";
        style = "night";
      };

      # Highlight todo, notes, etc in comments
      notes.todo-comments.enable = true;

      mini = {
        # Collection of various small independent plugins/modules
        ai = {
          enable = true;
          setupOpts.n_lines = 500;
        };
        surround.enable = true;
      };

      treesitter = {
        highlight = {
          enable = true;
          additionalVimRegexHighlighting = [ "ruby" ];
        };
        indent = {
          enable = true;
          disable = [ "ruby" ];
        };
      };
    };
  };
}
