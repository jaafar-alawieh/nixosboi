{ config, pkgs, lib, ... }:

{
  environment.etc."xdg/kitty/kitty.conf".text = ''
    ## ─── FONTS ───────────────────────────────
    font_family      OverpassM Nerd Font Mono
    font_size        14.0
    enable_ligatures yes

    ## ─── BASE COLORS & PALETTE ─────────────────────  
    background       #282a36
    foreground       #00ff00
    cursor           #f8f8f2

    color0  #21222c
    color1  #ff5555
    color2  #50fa7b
    color3  #f1fa8c
    color4  #bd93f9
    color5  #ff79c6
    color6  #8be9fd
    color7  #f8f8f2
    color8  #6272a4
    color9  #ff6e6e
    color10 #69ff94
    color11 #ffffa5
    color12 #d6acff
    color13 #ff92df
    color14 #a4ffff
    color15 #ffffff

    ## ─── DECORATIONS & QUIT ──────────────────────
    hide_window_decorations yes      # remove the OS/KDE/GNOME titlebar
    confirm_os_window_close 0        # disable “Are you sure?” on exit

    ## ─── KEYBINDINGS ─────────────────────────────
    hide_tab_bar_when_only_one_tab yes
    map ctrl+shift+t new_tab
    map ctrl+shift+w close_window
  '';
}
