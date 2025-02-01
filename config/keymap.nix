{
  keymaps = [
    # Wrapped line movement.
    # {
    #   mode = [ "n" "v" ];
    #   key = "j";
    #   action = "v:count == 0 ? 'gj' : 'j'";
    #   options = {
    #     expr = true;
    #     remap = true;
    #   };
    # }
    # {
    #   mode = [ "n" "v" ];
    #   key = "k";
    #   action = "v:count == 0 ? 'gk' : 'k'";
    #   options = {
    #     expr = true;
    #     remap = true;
    #   };
    # }
    # formatter
    {
      mode = [ "n" "v" ];
      key = "<A-S-f>";
      action = ''
        function()
          vim.lsp.buf.format()
        end
      '';
      lua = true;
    }
    # Window movement.
    {
      mode = [ "n" ];
      key = "<A-down>";
      action = ":m+<CR>==";
    }
    {
      mode = [ "n" ];
      key = "<A-up>";
      action = ":m-2<CR>==";
    }
    {
      mode = [ "i" ];
      key = "<A-down>";
      action = ":m+<CR>==gi";
    }
    {
      mode = [ "i" ];
      key = "<A-up>";
      action = ":m-2<CR>==gi";
    }
    {
      mode = [ "v" ];
      key = "<A-down>";
      action = ":m+<CR>==gv";
    }
    {
      mode = [ "v" ];
      key = "<A-up>";
      action = ":m-2<CR>==gv";
    }
    {
      mode = [ "n" ];
      key = "<A-left>";
      action = "<c-w>h";
    }
    {
      mode = [ "n" ];
      key = "<A-right>";
      action = "<c-w>l";
    }
    # Window resize
    {
      mode = [ "n" "t" ];
      key = "<c-up>";
      action = "<cmd>resize +2<cr>";
    }
    {
      mode = [ "n" "t" ];
      key = "<c-down>";
      action = "<cmd>resize -2<cr>";
    }
    {
      mode = [ "n" "t" ];
      key = "<c-right>";
      action = "<cmd>vertical resize +2<cr>";
    }
    {
      mode = [ "n" "t" ];
      key = "<c-left>";
      action = "<cmd>vertical resize -2<cr>";
    }
    # Window split
    {
      mode = [ "n" ];
      key = "<leader>-";
      action = "<C-W>s";
      options = {
        desc = "Split Window Horizontally";
        remap = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>|";
      action = "<C-W>v";
      options = {
        desc = "Split Window Vertically";
        remap = true;
      };
    }
    # Tab management
    {
      mode = [ "n" ];
      key = "<leader><tab><tab>";
      action = "<cmd>tabnew<cr>";
      options = {
        desc = "New Tab";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader><tab>l";
      action = "<cmd>tabnext<cr>";
      options = {
        desc = "Next Tab";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader><tab>h";
      action = "<cmd>tabprevious<cr>";
      options = {
        desc = "Previous Tab";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader><tab>d";
      action = "<cmd>tabclose<cr>";
      options = {
        desc = "Close Tab";
      };
    }
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
