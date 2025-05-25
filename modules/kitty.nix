{ config, pkgs, lib, ... }:

let
  kittyConf = ''
    ## ─── FONTS ───────────────────────────────
    font_family      OverpassM Nerd Font Mono
    font_size        14.0
    enable_ligatures yes

    ## ─── COLORS & UI ─────────────────────────
    background       #1e1e2e
    foreground       #cdd6f4
    cursor           #f5c2e7

    ## ─── BEHAVIOR & KEYBINDINGS ─────────────
    hide_tab_bar_when_only_one_tab yes
    map ctrl+shift+t new_tab
    map ctrl+shift+w close_window
  '';
in {
  environment.etc."xdg/kitty/kitty.conf".text = kittyConf;
}
