{
  imports = [
    ./toggleterm.nix
    ./telescope.nix
    ./neo-tree.nix
    ./lualine.nix
    ./mini.nix
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

  plugins.bufferline = {
    # enable = true;
    settings.options = {
      alwaysShowBufferline = false;
      offsets = [
        {
          filetype = "neo-tree";
          text = "Neo-Tree";
          separator = true;
          text_align = "left";
        }
      ];
    };
  };

  plugins = {
    auto-session.enable = true;
    which-key.enable = true;
    # mini.enable = true;
    noice.enable = true;
    notify.enable = true;
    web-devicons.enable = true;
  };

}
