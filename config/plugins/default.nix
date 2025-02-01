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
    notify.enable = true;
    web-devicons.enable = true;
    treesitter = {
      enable = true;
      settings.highlight.enable = true;
    };
    # direnv.enable = true;
  };

}
