{ config, pkgs, ... }:

{
  home.packages = [ pkgs.ghostty ];

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "UltraDark";
      foreground = "#00FF00";
      font-family = "OverpassM Nerd Font Mono";
      font-size = 15;
    };
  };
}