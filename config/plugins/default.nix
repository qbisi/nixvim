{
  imports = [
    ./editor
    ./toggleterm.nix
  ];

  plugins.which-key.enable = true;

  plugins.mini = {
    enable = true;
  };

  plugins.lsp = {
    enable = true;
    servers = {
      jsonls.enable = true;
      nil_ls = {
        enable = true;
        settings.formatting.command = [ "nixfmt" ];
      };
      pylsp = {
        enable = true;
        settings.plugins = {
          black.enabled = true;
          flake8.enabled = true;
          isort.enabled = true;
          jedi.enabled = true;
          mccabe.enabled = true;
          pycodestyle.enabled = true;
          pydocstyle.enabled = true;
          pyflakes.enabled = true;
          pylint.enabled = true;
          rope.enabled = true;
          yapf.enabled = true;
        };
      };
    };
  };

  # plugins.lsp-format = {
  #   enable = true;
  # };

  plugins.bufferline = {
    enable = true;
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

  plugins.lualine = {
    enable = true;
  };

}
