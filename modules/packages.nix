# System packages
{ config, pkgs, lib, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    # System utilities
    autocutsel
    dconf2nix
    gparted
    home-manager
    killall
    nano
    neofetch
    neovim
    powertop
    tldr
    tree
    unzip
    vim
    wget
    wmctrl
    ydotool
    zip
    zoxide
    
    
    # Media tools
    ardour
    ffmpeg_6-full
    #gimp-with-plugins
    imagemagick
    lmms
    mpv
    obs-studio
    tenacity
    vlc
    
    # Internet
    brave
    google-chrome
    firefox
    mullvad-vpn
    qbittorrent
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
    logseq
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
