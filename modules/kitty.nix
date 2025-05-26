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
    cursor_text_color background
    url_color        #8be9fd

    ## ─── ANSI PALETTE: DRACULA ─────────────────────
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

    ## ─── SELECTION ───────────────────────────────
    selection_foreground  #ffffff
    selection_background  #44475a

    ## ─── TAB BAR & MARKS ─────────────────────────
    active_tab_foreground   #282a36
    active_tab_background   #f8f8f2
    inactive_tab_foreground #282a36
    inactive_tab_background #6272a4

    mark1_foreground #282a36
    mark1_background #ff5555

    # Always show Kitty's own title/tab bar
    hide_tab_bar_when_only_one_tab no

    # Style & position
    tab_bar_style powerline
    tab_bar_edge top

    ## ─── WINDOW BORDERS ──────────────────────────
    active_border_color   #f8f8f2
    inactive_border_color #6272a4

    ## ─── DECORATIONS & QUIT ───────────────────────
    hide_window_decorations yes
    confirm_os_window_close 0

    ## ─── KEYBINDINGS ─────────────────────────────
    map ctrl+shift+t new_tab
    map ctrl+shift+w close_window
  '';
}
