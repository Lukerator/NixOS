{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>lo";
      action = ":Leet<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [O]pen";
      };
    }
    {
      mode = "n";
      key = "<leader>ls";
      action = ":Leet Submit<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [S]ubmit";
      };
    }
    {
      mode = "n";
      key = "<leader>lle";
      action = ":Leet List difficulty=easy<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [L]ist [E]asy";
      };
    }
    {
      mode = "n";
      key = "<leader>llm";
      action = ":Leet List difficulty=medium<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [L]ist [M]edium";
      };
    }
    {
      mode = "n";
      key = "<leader>llh";
      action = ":Leet List difficulty=hard<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [L]ist [H]ard";
      };
    }
    {
      mode = "n";
      key = "<leader>lre";
      action = ":Leet random difficulty=easy<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [R]andom [E]asy";
      };
    }
    {
      mode = "n";
      key = "<leader>lrm";
      action = ":Leet random difficulty=medium<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [R]andom [M]edium";
      };
    }
    {
      mode = "n";
      key = "<leader>lrh";
      action = ":Leet random difficulty=hard<CR>";
      options = {
        silent = true;
        desc = "[L]eetCode [R]andom [H]ard";
      };
    }
  ];
}
