{ pkgs, ... }:
{
	users.users.luke = {
		shell = pkgs.zsh;
		isNormalUser = true;
		description = "Luke";
		extraGroups = [
			"audio"
			"networkmanager"
			"video"
			"wheel"
		];
	};
}
