{ config, pkgs, ... }:

{
  home.packages = [ pkgs.ghostty ];

  xdg.configFile."ghostty/config".text = ''
    theme = UltraDark
    foreground = #00FF00
    font-family = OverpassM Nerd Font Mono
    font-size = 15
  '';
}