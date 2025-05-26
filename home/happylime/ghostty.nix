{ config, pkgs, ... }:

{
  home.packages = [ pkgs.ghostty ];

  xdg.configFile."ghostty/config".text = ''
    theme = UltraDark
    foreground = #00FF00
    font = "OverpassM Nerd Font Mono:size=15"
  '';
}