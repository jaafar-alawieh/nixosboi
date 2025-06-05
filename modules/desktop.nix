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
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.gsconnect
    gnomeExtensions.impatience
    gnomeExtensions.media-controls
    gnomeExtensions.panel-workspace-scroll
    gnomeExtensions.pop-shell
    gnomeExtensions.power-profile-switcher
    gnomeExtensions.reorder-workspaces
    gnomeExtensions.space-bar
    gnomeExtensions.tactile
    gnomeExtensions.transparent-top-bar-adjustable-transparency
    gnomeExtensions.transparent-window-moving
    gnomeExtensions.user-themes
    
    # GNOME themes and icons
    bibata-cursors
    dracula-theme
    flat-remix-gnome
    rose-pine-gtk-theme
    rose-pine-icon-theme
    tela-icon-theme
  ];
}
