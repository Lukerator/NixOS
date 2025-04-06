{
  programs.nixvim.extraConfigLua = # lua
    "require('leetcode').setup({
      lang = 'cpp',
      image_support = false,
      picker = { provider = 'telescope' },
    })";
}
