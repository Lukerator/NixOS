{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;
    settings.config.vim = {
      #keybinds
      globals.mapleader = " ";

      # theme
      theme.enable = true;
      theme.name = "catppuccin";
      theme.style = "macchiato";

      # Leet code
      utility.leetcode-nvim.enable = false;

      # Status line
      statusline = {
        lualine.enable = true;
        lualine.theme = "onedark"; # NOTE: dracula | gruvbox | onedark | catppuccin
      };

      ui = {
        borders.enable = false;
        breadcrumbs.enable = true;
        illuminate.enable = true;

        colorizer = {
          enable = true;
          setupOpts = {
            user_default_options.tailwind = true;
            filetypes = {
              "*" = {
                mode = "background";
                tailwind = true;
                names = true;
                RGB = true;
                RRGGBB = true;
              };
            };
          };
        };
      };

      # visuals
      visuals = {
        nvim-web-devicons.enable = true;
        indent-blankline.enable = true;
        cellular-automaton.enable = false; # NOTE: figure out what this does.
      };

      projects.project-nvim.enable = false;
      telescope.enable = true;
      snippets.luasnip.enable = true;

      spellcheck = {
        enable = true;
        programmingWordlist.enable = true;
      };

      #autocomplete
      autocomplete = {
        nvim-cmp.enable = false;
        blink-cmp.enable = true;
      };

      autopairs.nvim-autopairs.enable = true;

      # Comments
      comments.comment-nvim = {
        enable = false;
        setupOpts.mappings.extra = true;
      };

      # Notes
      notes = {
        todo-comments.enable = true; # NOTE: <leader>tds
      };

      notify = {
        nvim-notify.enable = true;
      };

      # Terminal
      terminal = {
        toggleterm = {
          enable = true;
          lazygit.enable = false;
        };
      };

      # LSP
      lsp = {
        formatOnSave = true;
        lspsaga.enable = false;
        lsplines.enable = false; # virtual lines on top of the real line of code
      };

      # Languages
      languages = {
        enableLSP = true;
        enableTreesitter = true;
        enableFormat = true;

        nix.enable = true;
        ts.enable = true;
        html.enable = true;
        tailwind.enable = true;
        css.enable = true;
        sql.enable = true;
        bash.enable = true;
        go.enable = true;
        lua.enable = true;
        markdown.enable = true;
        zig.enable = false;
        rust = {
          enable = false;
          crates.enable = false;
        };
      };

      # Assistant
      assistant = {
        chatgpt.enable = false;
        copilot = {
          enable = false;
          cmp.enable = false;
        };
      };

      filetree.neo-tree = {
        enable = true;
        setupOpts = {
          close_if_last_window = true;
          popup_border_style = "rounded";
        };
      };

      tabline = {
        nvimBufferline.enable = false;
      };

      minimap = {
        minimap-vim.enable = false;
        codewindow.enable = false; # lighter, faster, and uses lua for configuration
      };

      # Git
      git = {
        enable = false;
        gitsigns.enable = false;
        gitsigns.codeActions.enable = false; # throws an annoying debug message
      };

      # Options
      options = {
        smartindent = true; # this one is out of place
        autoindent = true; # Enable auto-indentation
        backup = false; # creates a backup file
        clipboard = "unnamedplus"; # allows neovim to access the system clipboard
        cmdheight = 1; # more space in the neovim command line for displaying messages
        #completeopt = { "menuone", "noselect" };
        conceallevel = 0; # so that `` is visible in markdown files
        fileencoding = "utf-8"; # the encoding written to a file
        foldmethod = "manual"; # folding, set to "expr" for treesitter based folding
        foldexpr = ""; # set to "nvim_treesitter#foldexpr()" for treesitter based folding
        guifont = "monospace:h17"; # the font used in graphical neovim applications
        hidden = true; # required to keep multiple buffers and open multiple buffers
        hlsearch = true; # highlight all matches on previous search pattern
        ignorecase = true; # ignore case in search patterns
        mouse = "a"; # allow the mouse to be used in neovim
        pumheight = 10; # pop up menu height
        showmode = false; # we don't need to see things like -- INSERT -- anymore
        smartcase = true; # smart case
        splitbelow = true; # force all horizontal splits to go below current window
        splitright = true; # force all vertical splits to go to the right of current window
        swapfile = false; # creates a swapfile
        termguicolors = true; # set term gui colors (most terminals support this)
        timeoutlen = 1000; # time to wait for a mapped sequence to complete (in milliseconds)
        title = true; # set the title of window to the value of the titlestring
        undofile = true; # enable persistent undo
        updatetime = 100; # faster completion
        writebackup = false; # if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
        expandtab = true; # convert tabs to spaces
        shiftwidth = 2; # the number of spaces inserted for each indentation
        tabstop = 2; # insert 2 spaces for a tab
        cursorline = true; # highlight the current line
        number = true; # set numbered lines
        numberwidth = 4; # set number column width to 2 {default 4}
        signcolumn = "yes"; # always show the sign column, otherwise it would shift the text each time
        wrap = false; # display lines as one long line
        scrolloff = 8; # minimal number of screen lines to keep above and below the cursor.
        sidescrolloff = 8; # minimal number of screen lines to keep left and right of the cursor.
        showcmd = false;
        ruler = false;
        relativenumber = true;
        laststatus = 3;
      };

    };
  };
}
