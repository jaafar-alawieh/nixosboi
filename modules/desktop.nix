# Desktop environment configuration
{ config, pkgs, lib, ... }:

{
  # Enable the X11 windowing system with GNOME
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
  };
  
  # XDG Portal
  xdg.portal = {
    enable = true;
  };

  # GNOME-specific packages
  environment.systemPackages = with pkgs; [
    # General Desktop utilities
    caffeine-ng
    
    # GNOME utilities
    dconf-editor
    gedit
    gnome-frog
    gnome-terminal
    gnome-tweaks
    gradience
    livecaptions
    pomodoro-gtk
    caligula
    copyq
    
    # GNOME extensions
    gnomeExtensions.battery-indicator-icon 
    gnomeExtensions.blur-my-shell
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.gsconnect
    gnomeExtensions.media-controls
    gnomeExtensions.panel-workspace-scroll
    gnomeExtensions.power-profile-switcher
    gnomeExtensions.reorder-workspaces
    gnomeExtensions.space-bar
    gnomeExtensions.tactile
    gnomeExtensions.tiling-shell
    gnomeExtensions.transparent-top-bar-adjustable-transparency
    gnomeExtensions.transparent-window-moving
    gnomeExtensions.workspace-matrix
    
    # GNOME themes and icons
    bibata-cursors
    dracula-theme
    flat-remix-gnome
    rose-pine-gtk-theme
    rose-pine-icon-theme
    tela-icon-theme
  ];
}
