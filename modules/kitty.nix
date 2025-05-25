{ config, pkgs, lib, ... }:

{
  programs.kitty = {
    enable = true;

    # these lines get appended verbatim to ~/.config/kitty/kitty.conf
    extraConfig = ''
      ## ─── FONTS ───────────────────────────────
      font_family      OverpassM Nerd Font Mono
      font_size        14.0
      enable_ligatures yes

      ## ─── COLORS & UI ─────────────────────────
      background       #1e1e2e
      foregroundrgb(166, 185, 19)
      cursor           #f5c2e7

      ## ─── BEHAVIOR & KEYBINDINGS ─────────────
      hide_tab_bar_when_only_one_tab yes
      map ctrl+shift+t new_tab
      map ctrl+shift+w close_window
    '';
  };
}
