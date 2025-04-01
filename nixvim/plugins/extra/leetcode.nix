{
  programs.nixvim.extraConfigLua = # lua
    "require('leetcode').setup({
      lang = 'cpp',
      image_support = true;
      picker = { provider = 'telescope' },
    })";
}
