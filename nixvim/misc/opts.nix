{
  programs.nixvim.opts = {
    mouse = "a";
    tabstop = 2;
    guifont = "JetBrainsMono NF:h14";
    paste = false;
    number = true;
    cmdheight = 1;
    shiftwidth = 2;
    scrolloff = 10;
    hlsearch = true;
    undofile = true;
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
    cursorcolumn = false;
    inccommand = "split";
    relativenumber = true;
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };
  };
}
