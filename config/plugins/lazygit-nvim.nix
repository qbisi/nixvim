{ pkgs, ... }:

{
  extraPlugins = with pkgs; [
    # lazygit
    vimPlugins.lazygit-nvim
  ];

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options = {
        desc = "Toggle LazyGit";
      };
    }
  ];
}
