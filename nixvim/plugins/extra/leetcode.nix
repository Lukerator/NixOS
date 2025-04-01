{
  programs.nixvim.extraConfigLua = # lua
    "require('leetcode-nvim').setup({
      lang = 'cpp',
      picker = { provider = 'telescope' },
    })";
}
