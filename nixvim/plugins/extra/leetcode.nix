{
  programs.nixvim.extraConfigLua = # lua
    "require('leetcode').setup({
      lang = 'cpp',
      picker = { provider = 'telescope' },
    })";
}
