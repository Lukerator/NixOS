{
  programs.nixvim.extraConfigLua = # lua
    "vim.deprecate = function() end";
}
