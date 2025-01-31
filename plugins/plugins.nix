{
  imports = [ ./editor ];

  plugins.which-key.enable = true;

  plugins.toggleterm = {
    enable = true;
    settings = {
      size = ''
        function()
            return vim.o.lines * 0.5
        end
      '';
      open_mapping = "[[<c-\\>]]";
    };
  };

  keymaps = [
    {
      mode = [ "t" ];
      key = "<c-\\>";
      action = "<cmd>close<cr>";
      options = {
        desc = "Hide Terminal";
      };
    }
  ];

  plugins.comment = {
    enable = true;
    settings = {
      opleader = {
        block = "<A-S-A>";
        line = "<C-_>";
      };
      toggler = {
        block = "<A-S-A>";
        line = "<C-_>";
      };
    };
  };

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

  plugins.lsp-format = {
    enable = true;
    setup = { };
  };

  plugins.bufferline = {
    enable = true;
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

  plugins.lualine = {
    enable = true;
  };

}
