{
  imports = [
    ./toggleterm.nix
    ./telescope.nix
    ./neo-tree.nix
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
    which-key.enable = true;
    mini.enable = true;
    noice.enable = true;
    notify.enable = true;
    lualine = {
      enable = true;
      settings.options.globalstatus = true;
    };
    web-devicons.enable = true;
  };

}
