{
  
keymaps = [
    {
      mode = "n";
      key = "<leader>sn";
      options = {
        silent = true;
        desc = "[S]earch [N]ixOS Files";
      };
      action.__raw = ''
        function()
          require('fzf-lua').files {
            cwd = "/home/luke/.config/nixos",
          }
        end
      '';
    }
    {
      mode = "n";
      key = "<leader>sc";
      options = {
        silent = true;
        desc = "[S]earch NeoVim [C]onfig Files";
      };
      action.__raw = ''
        function()
          require('fzf-lua').files {
            cwd = "/home/luke/.config/nixos/modules/nixvim",
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
      action.__raw = ''
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
      action.__raw = ''
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
