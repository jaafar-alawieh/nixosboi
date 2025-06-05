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

/*
Pop-shell shortcuts fix
# Disable search
dconf write '/org/gnome/shell/extensions/pop-shell/search' "@as []"

# Keep only Super+y for toggle-floating
dconf write '/org/gnome/shell/extensions/pop-shell/toggle-floating' "['<Super>y']"

# Disable everything else by forcing each to an empty array of strings
dconf write '/org/gnome/shell/extensions/pop-shell/tile-enter' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-left' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-right' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-up' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-down' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-left' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-right' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-up' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-move-down' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-left' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-right' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-up' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-swap-down' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-left' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-right' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-up' "@as []"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-resize-down' "@as []"
*/
