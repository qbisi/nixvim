{
  plugins.mini = {
    enable = true;
    modules = {
      move = {
        mappings = {
          # Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = "<M-left>";
          right = "<M-right>";
          down = "<M-down>";
          up = "<M-up>";

          # Move current line in Normal mode
          line_left = "<C-M-left>";
          line_right = "<C-M-right>";
          line_down = "<C-M-down>";
          line_up = "<C-M-up>";
        };

        options = {
          # Automatically reindent selection during linewise vertical move
          reindent_linewise = true;
        };
      };
    };
  };
}
