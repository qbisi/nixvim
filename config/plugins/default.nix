{
  imports = [
    ./toggleterm.nix
    ./telescope.nix
    ./neo-tree.nix
    ./lualine.nix
    ./mini.nix
    ./bufferline.nix
    ./which-key.nix
    ./gitsigns.nix
    ./lazygit-nvim.nix
  ];

  plugins.lsp = {
    enable = true;
    servers = {
      jsonls.enable = true;
      nil_ls = {
        enable = true;
        settings.formatting.command = [ "nixfmt" ];
      };
      pyright.enable = true;
      pylsp = {
        enable = true;
        settings.plugins = {
          black.enabled = true;
        };
      };
    };
  };

  plugins = {
    auto-session.enable = true;
    noice.enable = true;
    notify = {
      backgroundColour = "#000000";
      enable = true;
    };
    web-devicons.enable = true;
    treesitter = {
      enable = true;
      settings.highlight.enable = true;
    };
    typst-vim.enable = true;
    # direnv.enable = true;
  };

}
