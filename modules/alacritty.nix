{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.alacritty ];

  # Remove any YAML override, and replace with a TOML one:
  environment.etc."xdg/alacritty/alacritty.toml".text = ''
    ## ─── FONTS & LIGATURES ─────────────────────
    [font]
    normal = { family = "OverpassM Nerd Font Mono" }
    bold   = { family = "OverpassM Nerd Font Mono" }
    italic = { family = "OverpassM Nerd Font Mono" }
    size   = 14.0
    # enable_ligatures
    features = ["liga"]

    ## ─── BACKGROUND & FOREGROUND ────────────────
    [colors.primary]
    background = "#282a36"
    foreground = "#00ff00"

    ## ─── CURSOR ──────────────────────────────────
    [colors.cursor]
    text   = "#282a36"
    cursor = "#00ff00"

    ## ─── URL HYPERLINKS ─────────────────────────
    url = "#8be9fd"

    ## ─── SELECTION ───────────────────────────────
    [colors.selection]
    text       = "#ffffff"
    background = "#44475a"

    ## ─── DRACULA ANSI PALETTE ───────────────────
    [colors.normal]
    black   = "#21222c"; red     = "#ff5555"
    green   = "#50fa7b"; yellow  = "#f1fa8c"
    blue    = "#bd93f9"; magenta = "#ff79c6"
    cyan    = "#8be9fd"; white   = "#f8f8f2"

    [colors.bright]
    black   = "#6272a4"; red     = "#ff6e6e"
    green   = "#69ff94"; yellow  = "#ffffa5"
    blue    = "#d6acff"; magenta = "#ff92df"
    cyan    = "#a4ffff"; white   = "#ffffff"

    ## ─── MISC ────────────────────────────────────
    # (no titlebar/tabbing macros in Alacritty)
  '';
}
