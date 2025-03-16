{
	programs.zsh = {
		enable = true;
		dotDir = ".config/zsh";
		enableCompletion = true;
		autosuggestion.enable = false;
		syntaxHighlighting.enable = true;
		initExtra = ''
neovideClose() {
	neovide "$@" && foot &
	exit
}
clear
		'';
		oh-my-zsh = {
			enable = true;
			theme = "robbyrussell";
		};
		shellAliases = {
			ls = "lsd";
			nvim = "neovideClose";
			update = "update-no-git && git-update";
			upgrade = "upgrade-no-git && git-update";
			home-update = "home-update-no-git && git-update";
			system-update = "system-update-no-git && git-update";
			system-update-no-git = "nh os switch && nh clean all";
			home-update-no-git = "nh home switch -- --impure && nh clean all";
			update-no-git = "nh os switch && nh home switch -- --impure && nh clean all";
			upgrade-no-git = "nh os switch -u && nh home switch -- --impure && nh clean all";
			git-update = ''cd ~/.config/nixos && git add --all && git push && git commit -a -m "update" && cd -'';
		};
	};
}
