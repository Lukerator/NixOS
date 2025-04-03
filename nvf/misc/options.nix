{
  config.vim.options = {
    mouse = "a"; # Enable mouse support
    list = false; # Disables display of whitespace characters
    number = true; # Displays line numbers
    confirm = true; # Prompt user to save before exiting
    scrolloff = 10; # Scrolls before cursor reaches top/bottom
    undofile = true; # Enables persistent undo
    showmode = false; # Hides mode in status bar as it will be displayed by lualine
    smartcase = true; # Enables case-sensitive search if there is an uppercase character
    timeoutlen = 300; # Sets timeout for key sequences
    updatetime = 250; # Sets update time for plugins
    cursorline = true; # Enables cursor line highlighting
    ignorecase = true; # ignores case when searching
    splitright = true; # Splits to the right instead of left
    splitbelow = true; # Splits to the bottom instead of top
    breakindent = true; # Enables automatic indentation
    signcolumn = "yes"; # Enables sign column for git signs
    inccommand = "split"; # Displays live preview of substitution
    relativenumber = true; # Displays relative line numbers
  };
}
