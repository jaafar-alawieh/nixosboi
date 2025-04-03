# System packages
{ config, pkgs, lib, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    # System utilities
    autocutsel
    dconf2nix
    home-manager
    killall
    nano
    neofetch
    neovim
    powertop
    tldr
    vim
    wget
    wmctrl
    ydotool
    zip
    unzip
    
    # Media tools
    ardour
    ffmpeg_6-full
    gimp-with-plugins
    glaxnimate
    imagemagick
    lmms
    mediainfo
    mpv
    obs-studio
    tenacity
    vlc
    
    # Internet
    brave
    firefox
    mullvad-vpn
    ungoogled-chromium
    zoom-us
    webex
    
    # Security
    bitwarden-desktop
    gnupg
    gnupg1
    keepassxc
    pass
    qtpass
    
    # Gaming and Wine
    gzdoom
    lutris
    protonup-qt
    wineWowPackages.stable
    winetricks
    
    # PDF and office
    libreoffice
    ocrmypdf
    poppler_utils
    
    # File management
    fsearch
    megacmd
    popsicle
  ];

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
