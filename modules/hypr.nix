{ config, pkgs, lib, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;

  # Wayland + Hyprland-specific portals for screen sharing and compatibility
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  # Hyprland system packages (only what's missing from your existing setup)
  environment.systemPackages = with pkgs; [
    waybar                 # Status bar
    wofi                   # App launcher
    mako                   # Notification daemon
    swaybg                 # Wallpaper
    swayidle               # Idle timeout handler
    swaylock-effects       # Screen locker
    foot                   # Terminal (Wayland-native)
    brightnessctl          # Backlight control
    playerctl              # Media player controller
    wl-clipboard           # Clipboard for Wayland
    grim                   # Screenshot tool
    slurp                  # Region selection for screenshots
    swappy                 # Annotate screenshots
    qt5ct                  # Qt5 theming
    qt6ct                  # Qt6 theming
    lxappearance           # GTK theming
  ];
}