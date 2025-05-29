{ config, pkgs, lib, ... }:

{
  programs.hyprland = {
    enable  = true;
    package = pkgs.hyprland;
  };
  environment.systemPackages = with pkgs; [
    waybar           # status bar
    hyprpaper        # wallpaper setter
    mako             # notification daemon
    swayidle         # idle & lock management
    swaylock         # screen locker
    wofi             # application launcher
    wl-clipboard     # clipboard utilities
    grim             # screenshot utility
    slurp            # region selection
  ];

  xdg.portal = {
    enable       = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };
}
