{
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      options.desc = "Fuzzily search in current buffer";
      action.__raw = ''
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
  ];
}
