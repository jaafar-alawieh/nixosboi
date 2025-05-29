{ config, pkgs, lib, ... }:

{
  programs.hyprland = {
    enable  = true;
    package = pkgs.hyprland;
  };
  environment.systemPackages = with pkgs; [
    grim                    # screenshot utility
    hyprpaper               # wallpaper setter
    mako                    # notification daemon
    networkmanagerapplet    # network manager applet
    pavucontrol             # audio control
    kitty                   # terminal emulator
    slurp                   # region selection
    swayidle                # idle & lock management
    swaylock                # screen locker
    waybar                  # status bar
    wdisplays               # monitor manager
    wl-clipboard            # clipboard utilities
    wofi                    # application launcher
  ];

  xdg.portal = {
    enable       = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };
}
