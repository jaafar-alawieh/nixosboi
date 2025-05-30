# ~/projects/nix/home/ghostty.nix
{ config, pkgs, ... }:

{
  home.packages = [ pkgs.ghostty ];

  xdg.configFile."ghostty/config".text = ''
    # --- Appearance ---
    theme        = UltraDark
    foreground   = #00FF00
    cursor-color = #00FF00
    adjust-cursor-thickness = 2

    # --- Font ---
    font-family  = OverpassM Nerd Font Mono
    font-size    = 15

    # --- Initial window size (cols × rows) ---
    window-width    = 70
    window-height   = 15

    # --- Bindings ---
    keybind = ctrl+a=select_all  '';
}