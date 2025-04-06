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
              cwd = vim.fn.stdpath("config")
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
  ];
}
