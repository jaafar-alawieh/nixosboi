# Minimal Hyprland session config; assumes GNOME remains configured elsewhere
{ config, pkgs, ... }:

{
  # Ensure X/Wayland and GDM are enabled (for session selection)
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;

  # Hyprland compositor session
  services.xserver.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
  };

  # Core Hyprland tooling
  environment.systemPackages = with pkgs; [
    hyprland            # Wayland compositor
    waybar              # Status bar
    hyprpaper           # Wallpaper setter
    mako                # Notification daemon
    swayidle            # Idle and lock management
    swaylock            # Screen locker
    kitty                # Terminal emulator
    rofi                # Application launcher
    wl-clipboard        # Clipboard utilities
    grim                # Screenshot tool
    slurp               # Region selection
  ];

  # Optional: session database update
  services.xserver.displayManager.sessionCommands = ''
    update-desktop-database
  '';
}
