{
  plugins.neo-tree.enable = true;
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options = {
        desc = "Toggle Neo-Tree";
      };
    }
  ];
}
