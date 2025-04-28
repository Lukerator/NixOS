{
  programs.nixvim.plugins.blink-cmp.settings.sources.providers.windsurf = {
    async = true;
    enabled = true;
    max_items = 10;
    name = "windsurf";
    module = "blink.compat.source";
  };
}
