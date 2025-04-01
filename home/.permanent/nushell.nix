{ pkgs, ... }:
{
  programs.nuxshell = {
    enable = true;
    settings = {
      show_banner = false;
      prompt_command_right = "";
      completions.external = {
        enable = true;
        max_results = 20;
      };
    };
    plugins = with pkgs.nushellPlugins; [
      formats
      gstat
      highlight
      skim
    ];
    shellAliases = {
      ls = "lsd";
      eww = "eww -c ~/.config/nixos/eww";
      update = "git-update && update-no-git";
      upgrade = "git-update && upgrade-no-git && git-update";
      home-update = "git-update && home-update-no-git";
      system-update = "git-update && system-update-no-git";
      system-update-no-git = "nh os switch && nh clean all";
      home-update-no-git = "nh home switch -- --impure && nh clean all";
      update-no-git = "nh os switch && nh home switch -- --impure && nh clean all";
      upgrade-no-git = "nh os switch -u && nh home switch -- --impure && nh clean all";
      git-update = ''cd ~/.config/nixos && git add --all && git push && git commit -a -m "update" && cd -'';
    };
  };
}
