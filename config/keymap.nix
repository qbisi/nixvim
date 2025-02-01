{
  # windows-like
  keymaps = [
    {
      mode = [
        "n"
        "i"
      ];
      key = "<C-z>";
      action = "<cmd>undo<CR>";
      options = {
        desc = "Undo";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-s>";
      action = "<cmd>update<CR>";
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
    {
      mode = "n";
      key = "<leader>bd";
      action = "<CMD>bd<CR>";
      options.desc = "Delete Buffer and Window";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<CMD>BufferLineTogglePin<CR>";
      options.desc = "Toggle Pin";
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<CMD>BufferLineGroupClose ungrouped<CR>";
      options.desc = "Delete Non-Pinned Buffers";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<CMD>BufferLineCloseOthers<CR>";
      options.desc = "Delete Other Buffers";
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
