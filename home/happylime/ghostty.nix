{ config, pkgs, ... }:

{
  home.packages = [ pkgs.ghostty ];

  xdg.configFile."ghostty/config".text = ''
    # --- Appearance ---
    theme        = UltraDark
    foreground   = #00FF00

    # --- Font ---
    font-family  = OverpassM Nerd Font Mono
    font-size    = 15

    # --- Initial window size (cols × rows) ---
    width        = 70
    height       = 15
  '';
}
