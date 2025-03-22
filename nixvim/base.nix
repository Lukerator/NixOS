{
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		colorschemes.catppuccin = {
			enable = true;
			settings.flavour = "Macchiato";
		};
		globals = {
			mapleader = " ";
			maplocalleader = " ";
			have_nerd_font = true;
		};
		keymaps = [
			{
				mode = "n";
				key = "<Esc>";
				action = "<cmd>nohlsearch<CR>";
				options.desc = "No highlights in search";
			}
		];
		opts = {
			mouse = "a";
			list = true;
			paste = false;
			number = true;
			cmdheight = 1;
			scrolloff = 10;
			hlsearch = true;
			showmode = true;
			undofile = true;
			smartcase = true;
			updatetime = 250;
			timeoutlen = 400;
			cursorline = true;
			splitbelow = true;
			splitright = true;
			ignorecase = true;
			breakindent = true;
			cursorcolumn = false;
			inccommand = "split";
			relativenumber = true;
			listchars.__raw = "{ tab = '» ', trail = '·' }";
			clipboard = {
				register = "unnamedplus";
				providers.wl-copy.enable = true;
			};
		};
	};
}
