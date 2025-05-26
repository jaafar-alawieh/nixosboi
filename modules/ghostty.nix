{ config, pkgs, lib, ... }:

{
  environment.etc."xdg/ghostty/config".text = ''
    theme = UltraDark
    foreground = #00FF00
    font = OverpassMono Nerd Font Mono:size=15
  '';
}
