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

    ### experimental
    hypridle
    hyprlock
    hyprpicker
    xdg-desktop-portal
    xdg-desktop-portal-hyprland
    fuzzel
    foot
    swww
    swappy
    wlogout
    wireplumber
    brightnessctl
    ddcutil
    upower
    cliphist
    playerctl
    polkit_gnome
    gnome-keyring
    libsForQt5.qt5ct
    qt5.qtwayland
    fontconfig
    jetbrains-mono
  ];

  xdg.portal = {
    enable       = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };
}
