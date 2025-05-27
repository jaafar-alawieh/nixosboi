{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;

    image = /home/happylime/.config/background;
    base16Scheme = "rose-pine";

    fonts = {
      sizes = {
        applications = 14;
        desktop = 14;
        terminal = 15;
      };

      sansSerif = {
        name = "Inter Variable";
      };

      serif = {
        name = "Inter Variable";
      };

      monospace = {
        name = "OverpassM Nerd Font Mono";
      };

      emoji = {
        name = "Noto Color Emoji";
      };
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
    };
  };
}
