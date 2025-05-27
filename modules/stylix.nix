# ~/projects/nix/modules/stylix.nix
{ pkgs, ... }:
{
  # Color scheme: Rose Pine
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";

  # Cursor: Bibata Modern Classic
  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name    = "Bibata-Modern-Classic";
  stylix.cursor.size    = 24;

  # Fonts configuration
  stylix.fonts = {
    # Terminal font: Overpass Mono Nerd Font Mono at size 15
    monospace = {
      package = pkgs.nerdfonts.override { fonts = [ "OverpassMono" ]; };
      name    = "OverpassMono Nerd Font Mono";
    };
    # UI & documents font: Inter Variable at size 14
    sansSerif = {
      package = pkgs.inter-font;
      name    = "Inter Variable";
    };
    serif = {
      package = pkgs.inter-font;
      name    = "Inter Variable";
    };
  };

  # Font sizes
  stylix.fonts.sizes = {
    applications = 14;  # UI elements
    desktop      = 12;
    popups       = 14;
    terminal     = 15;
  };
}
