{ pkgs }:
{
  plugins.telescope = {
    enable = true;
  };

  extraPackages = [ pkgs.ripgrep ];
}
