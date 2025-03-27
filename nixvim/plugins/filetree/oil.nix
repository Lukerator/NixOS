{
  programs.nixvim.plugins.oil = {
    enable = true;
    settings = {
      columns = [ "icon" ];
      skip_confirm_for_simple_edits = true;
      win_options = {
        concealcursor = "ncv";
        conceallevel = 3;
        cursorcolumn = false;
        foldcolumn = "0";
        list = false;
        signcolumn = "no";
        spell = false;
        wrap = false;
    };
  };
}
