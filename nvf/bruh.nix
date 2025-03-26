{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;
    config.vim = {
      #keybinds
      globals.mapleader = " ";

      # theme
      theme.enable = true;
      theme.name = "catppuccin";
      theme.style = "mocha";

      # Leet code
      utility.leetcode-nvim.enable = false;

      # Discord 🤣
      presence = {
        neocord = {
          enable = true;
          setupOpts.enable_line_number = false;
          setupOpts.show_time = false;
        };
      };

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

      projects.project-nvim.enable = true;
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
        enable = true;
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
          lazygit.enable = true;
        };
      };

      # LSP
      lsp = {
        formatOnSave = true;
        lspsaga.enable = false;
        lsplines.enable = true; # virtual lines on top of the real line of code
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
        enable = true;
        gitsigns.enable = true;
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

      keymaps = [
        # My custom hotkeys 🧶
        {
          # Save
          key = "<C-s>";
          mode = "n";
          silent = false;
          action = ":w<CR>";
        }
        {
          # Move one right
          key = "<C-l>";
          mode = "i";
          silent = false;
          action = "<Right>";
        }
        {
          # add empty line without insert mode
          key = "<M-o>";
          mode = "n";
          silent = false;
          action = ":normal! o<CR>";
        }
        {
          # Insert a new line above the current line and return to "normal" mode
          key = "<M-O>";
          mode = "n";
          silent = false;
          action = ":normal! O<CR>";
        }
        {
          # Toggle between absolute and relative line numbers with <Leader>n
          key = "<leader>n";
          mode = "n";
          silent = false;
          action = ":set relativenumber!<CR>";
        }
        {
          # LSP info
          key = "<Leader>lsp";
          mode = "n";
          silent = false;
          action = ":LspInfo<CR>";
        }
        {
          # rename fuctions
          key = "<leader>rn";
          mode = "n";
          silent = false;
          action = "<cmd>lua vim.lsp.buf.rename()<CR>";
        }
        {
          # show error in float
          key = "<leader>d";
          mode = "n";
          silent = false;
          action = "<cmd>lua vim.diagnostic.open_float()<cr>";
        }
        {
          # Reset file back to last save
          key = "<leader>E";
          mode = "n";
          silent = false;
          action = ":e!<cr>";
        }

        # from primogen. 👾
        {
          # move highlighted
          key = "<M-j>";
          mode = "n";
          silent = false;
          action = ":m '>+1<CR>gv=gv";
        }
        {
          # move highlighted 2
          key = "<M-k>";
          mode = "n";
          silent = false;
          action = ":m '<-2<CR>gv=gv";
        }
        {
          # J stay in place. # tbh idk what this one does.
          key = "J";
          mode = "n";
          silent = false;
          action = "mzJ`z";
        }
        {
          # move half page
          key = "<C-d>";
          mode = "n";
          silent = false;
          action = "<C-d>zz";
        }
        {
          # move half page 2
          key = "<C-u>";
          mode = "n";
          silent = false;
          action = "<C-u>zz";
        }
        {
          # search
          key = "n";
          mode = "n";
          silent = false;
          action = "nzzzv";
        }
        {
          # search 2
          key = "N";
          mode = "n";
          silent = false;
          action = "Nzzzv";
        }
        {
          # no more capital Q
          key = "Q";
          mode = "n";
          silent = false;
          action = "<nop>";
        }
        {
          # replace highlighted word
          key = "<leader>s";
          mode = "n";
          silent = false;
          action = ":%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>";
        }
        # keymaps for plugins
        {
          # neotree
          key = "<leader>e";
          mode = "n";
          silent = true;
          action = ":Neotree left<CR>";
        }
        # harpoon
        {
          # harpoon menu
          key = "<C-e>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>";
        }
        {
          # add to harpoon
          key = "<leader>a";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.mark').add_file()<cr>";
        }
        {
          # harpoon switch
          key = "<C-j>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(1)<cr>";
        }
        {
          #
          key = "<C-k>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(2)<cr>";
        }
        {
          #
          key = "<C-l>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(3)<cr>";
        }
        {
          #
          key = "<C-M-j>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(4)<cr>";
        }
        {
          #
          key = "<C-M-k>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(5)<cr>";
        }
        {
          #
          key = "<C-M-l>";
          mode = "n";
          silent = false;
          action = "<cmd>lua require('harpoon.ui').nav_file(6)<cr>";
        }
        {
          # undotree
          key = "<F5>";
          mode = "n";
          silent = true;
          action = ":UndotreeToggle<CR>";
        }
      ];
      extraPlugins = with pkgs.vimPlugins; {
        harpoon = {
          package = harpoon;
          setup = "require('harpoon').setup {}";
        };
        undotree = {
          package = undotree;
          after = [ "harpoon" ];
        };
      };
    };
  };
}
