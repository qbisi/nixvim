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
        silent = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<S-down>";
      action = "V<S-down>";
      options = {
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<C-S-up>";
      action = "<S-up><S-up><S-up>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<C-S-down>";
      action = "<S-down><S-down><S-down>";
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
