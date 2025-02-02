{
  pkgs,
  ...
}:
{
  imports = [
    ./plugins
    ./keymaps.nix
    ./select.nix
  ];

  globals.mapleader = " ";

  # Color scheme.
  colorschemes.catppuccin = {
    enable = true;
    settings.flavour = "macchiato";
  };

  # Options.
  opts = {
    # Indent settings.
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    # Line number.
    number = true;
    # relativenumber = true;
    signcolumn = "yes";
    # Search case sensitivity.
    ic = true;
    # Keymodel.
    virtualedit = "onemore";
    # Allow move across lines.
    whichwrap = "b,s,h,l,<,>";
  };

  extraConfigLua = ''
    if vim.env.SSH_TTY then
        vim.opt.clipboard = ""
    else
        vim.opt.clipboard = "unnamedplus"
    end
  '';

  # Clipboard.
  clipboard = {
    providers.xclip.enable = true;
  };

  # Packages
  extraPackages = with pkgs; [
    nixfmt-rfc-style
  ];

}
