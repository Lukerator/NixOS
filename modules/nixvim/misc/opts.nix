{
  programs.nixvim.opts = {
    mouse = "a";
    tabstop = 2;
    paste = false;
    number = true;
    cmdheight = 1;
    foldlevel = 99;
    shiftwidth = 2;
    scrolloff = 10;
    hlsearch = true;
    undofile = true;
    foldcolumn = "0";
    showmode = false;
    expandtab = true;
    smartcase = true;
    updatetime = 250;
    timeoutlen = 400;
    cursorline = true;
    splitbelow = true;
    splitright = true;
    ignorecase = true;
    breakindent = true;
    smartindent = true;
    foldlevelstart = 99;
    cursorcolumn = false;
    inccommand = "split";
    relativenumber = true;
    guifont = "MonaspiceNe NF:h14";
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };
  };
}
