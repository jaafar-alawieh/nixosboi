{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;

    image = /home/happylime/Pictures/wallpapers/rose-pine.jpg;
    base16Scheme = "rose-pine";

    fonts = {
      sizes = {
        applications = 14;
        desktop = 14;
        terminal = 15;
      };

      sansSerif = "Inter Variable";
      serif = "Inter Variable";
      monospace = "OverpassM Nerd Font Mono";
      emoji = "Noto Color Emoji";
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
    };

    gtk = {
      enable = true;
      theme = {
        package = pkgs.rose-pine-gtk-theme;
        name = "rose-pine";
      };
      iconTheme = {
        package = pkgs.rose-pine-icon-theme;
        name = "rose-pine";
      };
    };
  };

  # Ensure the fonts are installed
  environment.systemPackages = with pkgs; [
    (nerdfonts.override { fonts = [ "OverpassMono" ]; })
    inter
  ];
}
