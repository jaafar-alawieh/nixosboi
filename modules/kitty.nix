{ config, pkgs, lib, ... }:

{
  environment.etc."xdg/kitty/kitty.conf".text = ''
    ## ─── FONTS ───────────────────────────────
    font_family      OverpassM Nerd Font Mono
    font_size        14.0
    enable_ligatures yes

    ## ─── BASE COLORS ─────────────────────────
    background       #282a36    # Dracula background
    foreground       #00ff00    # Bright pure green for all regular text
    cursor           #f8f8f2    # Light cursor

    ## ─── ANSI PALETTE: DRACULA ───────────────
    # Normal
    color0  #21222c      # black
    color1  #ff5555      # red
    color2  #50fa7b      # green
    color3  #f1fa8c      # yellow
    color4  #bd93f9      # purple
    color5  #ff79c6      # pink
    color6  #8be9fd      # cyan
    color7  #f8f8f2      # white

    # Bright
    color8  #6272a4      # bright black (gray)
    color9  #ff6e6e      # bright red
    color10 #69ff94      # bright green
    color11 #ffffa5      # bright yellow
    color12 #d6acff      # bright purple
    color13 #ff92df      # bright pink
    color14 #a4ffff      # bright cyan
    color15 #ffffff      # bright white

    ## ─── BEHAVIOR & KEYBINDINGS ─────────────
    hide_tab_bar_when_only_one_tab yes
    map ctrl+shift+t new_tab
    map ctrl+shift+w close_window
  '';
}
