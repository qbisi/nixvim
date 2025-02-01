{
  # windows-like
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-z>";
      action = "u";
      options = {
        desc = "Undo";
      };
    }
    {
      mode = [ "v" ];
      key = "<C-z>";
      action = "u==gv";
      options = {
        desc = "Undo";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-s>";
      action = ":update<CR>";
      options = {
        desc = "Save";
      };
    }
    {
      mode = [ "i" ];
      key = "<C-s>";
      action = "<C-O>:update<CR>";
      options = {
        desc = "Save";
      };
    }
    {
      mode = [ "i" ];
      key = "<C-s>";
      action = "<C-C>:update<CR>";
      options = {
        desc = "Save";
      };
    }
    # copy/cut to clipboard
    {
      mode = [ "v" ];
      key = "<C-c>";
      action = ''"*y'';
    }
    {
      mode = [ "v" ];
      key = "<C-x>";
      action = ''"*d'';
    }
    # formatter
    {
      mode = [
        "n"
        "v"
      ];
      key = "<A-S-f>";
      action = ''
        function()
          vim.lsp.buf.format()
        end
      '';
      lua = true;
    }
    # # window
    # {
    #   mode = "n";
    #   key = "<leader>w";
    #   action = "<c-w>";
    #   options.desc = "window";
    # }
    # Buffer movement
    {
      mode = [ "n" ];
      key = "<S-Tab>";
      action = "<cmd>bprevious<cr>";
      options = {
        desc = "Previous Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<Tab>";
      action = "<cmd>bnext<cr>";
      options = {
        desc = "Next Buffer";
      };
    }
    # Misc
    {
      mode = [ "n" ];
      key = "<leader>qq";
      action = "<cmd>qa!<cr>";
      options = {
        desc = "Quit All";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>hh";
      action = "<cmd>nohlsearch<cr>";
      options = {
        desc = "Clear Search Highlight";
      };
    }
  ];
}
