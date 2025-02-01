{
  opts = {
    keymodel = "startsel,stopsel";
    selection = "exclusive";
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<S-up>";
      action = "V<S-up>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-down>";
      action = "V<S-down>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-left>";
      action = "v<S-left>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-right>";
      action = "v<S-right>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
