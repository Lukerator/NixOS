{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>sn";
      options = {
        silent = true;
        desc = "[S]earch [N]eovim Files";
      };
      action.__raw = # lua
        ''
          function()
            require('fzf-lua').files {
              cwd = "/home/luke/.config/nixos/modules/nixvim",
            }
          end
        '';
    }
    {
      mode = "n";
      key = "<leader>sf";
      options = {
        silent = true;
        desc = "[S]earch [F]iles (Show Hidden)";
      };
      action.__raw = # lua
        ''
          function()
            require('fzf-lua').files {
              cmd = "fd",
              prompt = "Search Files (Hidden Files)"
            }
          end
        '';
    }

    {
      mode = "n";
      key = "<leader>s/";
      options = {
        silent = true;
        desc = "[S]earch [/] in Open Files";
      };
      action.__raw = # lua
        ''
          function()
            require('fzf-lua').live_grep_glob {
              grep_open_files = true,
              prompt = "Live grep in open files"
            }
          end
        '';
    }
    {
      mode = "n";
      key = "<leader>/";
      options.desc = "Fuzzily search in current buffer";
      action.__raw = # lua
        ''
          function()
            require("fzf-lua").blines({
              winopts = {
                preview = {
                  hidden = "nohidden",
                },
              },
            })
          end
        '';
    }
    {
      mode = "i";
      key = "<C-d>";
      options = {
        silent = true;
        desc = "Dictionary completion using fzf";
      };
      action.__raw = # lua
        ''
          function()
            local dict_file = "/path/to/your/dictionary.txt"
            local selected_word = require('fzf-lua').fzf({
              prompt = "Select a word",
              cmd = "cat " .. dict_file,
              fzf_opts = {"--preview", "echo {}"}
            })
            if selected_word then
              vim.api.nvim_put({ selected_word }, "c", true, true)
            end
          end
        '';
    }

  ];
}
