{
  plugins.toggleterm = {
    enable = true;
    settings = {
      size = ''
        function()
            return vim.o.lines * 0.5
        end
      '';
      # open_mapping = "[[<c-\\>]]";
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<c-\\>";
      action = "<cmd>ToggleTerm<cr>";
      options = {
        desc = "Toggle Terminal";
      };
    }
  ];
}
