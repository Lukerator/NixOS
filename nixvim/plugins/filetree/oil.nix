{
  programs.nixvim.plugins.oil = {
    enable = true;
    settings = {
      columns = [ "icon" ];
      use_default_keymaps = false;
      skip_confirm_for_simple_edits = true;
      win_options = {
        list = false;
        wrap = false;
        spell = false;
        conceallevel = 3;
        foldcolumn = "0";
        signcolumn = "no";
        cursorcolumn = false;
        concealcursor = "ncv";
      };
    };
  };
}
