# NixOS configuration file

{ config, pkgs, lib, ... }:

let
  # NUR for spotify
  nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    inherit pkgs;
  };
in
{
  imports = [
    <home-manager/nixos>
    ./hardware-configuration.nix
  ];

  #
  # SYSTEM CONFIGURATION
  #
  
  # Basic system setup
  system = {
    stateVersion = "23.11"; # Do not change unless you know what you're doing
    copySystemConfiguration = true;
    autoUpgrade = {
      enable = true;
      allowReboot = false;
      channel = "https://channels.nixos.org/nixos-24.11";
    };
  };

  # Bootloader configuration
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # Networking
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };
  
  # Internationalization
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "en_AU.UTF-8";
      LC_IDENTIFICATION = "en_AU.UTF-8";
      LC_MEASUREMENT = "en_AU.UTF-8";
      LC_MONETARY = "en_AU.UTF-8";
      LC_NAME = "en_AU.UTF-8";
      LC_NUMERIC = "en_AU.UTF-8";
      LC_PAPER = "en_AU.UTF-8";
      LC_TELEPHONE = "en_AU.UTF-8";
      LC_TIME = "en_AU.UTF-8"; 
    };
  };

  # Time zone settings
  time.timeZone = "Europe/London";
  # time.timeZone = "Europe/Paris";
  # time.timeZone = "Asia/Beirut";
  
  #
  # DESKTOP ENVIRONMENT
  #
  
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
    # Uncomment if needed
    # extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  # 
  # HARDWARE SUPPORT
  #
  
  # Printing
  services.printing.enable = true;

  # Audio with PipeWire
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
  };
  
  # Fix for keyboard backlight - remove if not needed
  systemd.services.disable-keyboard-backlight = {
    enable = true;
    description = "Disable keyboard backlight on resume";
    serviceConfig = {
      Type = "oneshot";
    };
    script = ''
      /run/current-system/sw/bin/echo 0 > "/sys/devices/pci0000:00/0000:00:14.3/PNP0C09:00/VPC2004:00/leds/platform::kbd_backlight/brightness"
    '';
    wantedBy = [ "sleep.target" "hibernate.target" "hybrid-sleep.target" ];
    after = [ "sleep.target" "hibernate.target" "hybrid-sleep.target" ];
  };

  #
  # APPLICATIONS AND SERVICES
  #
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Flatpak support
  services.flatpak.enable = true;

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
  
  # Create necessary directories
  systemd.tmpfiles.rules = [
    "d /etc/nixos/conffiles 0755 root root"
    "d /etc/nixos/conffiles/backups 0755 root root"
    "d /etc/nixos/conffiles/scripts 0755 root root"
  ];
  
  # Fonts
  fonts.packages = with pkgs; [
    corefonts
    vistafonts
    wine64Packages.fonts
  ];
  
  # Package overrides (if needed)
  nixpkgs.config.packageOverrides = pkgs: rec {
    # Add package overrides here
  };
  
  # User account
  users.users.happylime = {
    isNormalUser = true;
    description = "happylime";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };

  # Home Manager configuration
  home-manager.users.happylime = {
    home.stateVersion = "24.05";
    programs.bash.enable = true;
    # Uncomment to import dconf settings
    # imports = [ ./dconf.nix ];
    home.file = {
      "touchegg" = {
        target = "/config/touchegg/touchegg.conf";
        source = "/etc/nixos/conffiles/touchegg.conf";
      };
    };
  };

  # Shell customization  
  programs.bash = {
    shellAliases = {
      # File management
      l = "ls -alh";
      ll = "ls -l";
      ls = "ls --color=tty";
      cp = "cp -i";
      mv = "mv -i";
      mkdir = "mkdir -p";
      
      # Navigation
      home = "cd ~";
      cb = "cd ..";
      cbb = "cd ../..";
      cbbb = "cd ../../..";
      cbbbb = "cd ../../../..";
      nixscripts = "cd /etc/nixos/conffiles/scripts";
      
      # NixOS management
      conv = "code ~/projects/nix/configuration.nix";
      revuild = "sudo cp ~/projects/nix/configuration.nix /etc/nixos/configuration.nix && sudo nixos-rebuild switch && [ $? -eq 0 ] && git -C ~/projects/nix add . && git -C ~/projects/nix commit -m 'auto rebuild commit' && git -C ~/projects/nix push";
      conf = "sudo nano -l /etc/nixos/configuration.nix";
      rebuild = "sudo nixos-rebuild switch && [ $? -eq 0 ] && now=$(date +'%Y-%m-%d_%H-%M-%S') && sudo cp /etc/nixos/configuration.nix /etc/nixos/conffiles/backups/configuration.$now.nix";
      nixclean = "nix-env --delete-generations old && nix-store --gc && nix-channel --update && nix-env -u --always && for link in /nix/var/nix/gcroots/auto/*; do rm $(readlink $link); done && nix-collect-garbage -d";
      
      # dconf management
      dconfigure = "sudo nano /etc/nixos/dconf.nix";
      dconfbackup = "dconf dump / | dconf2nix > dconf.nix ; sudo cp dconf.nix /etc/nixos/dconf.nix; sudo cp dconf.nix ~/projects/nix/dconf.nix";
      dconfbackuphalf = "dconf dump / | dconf2nix > dconf.nix";
      
      # Applications
      nano = "nano -l";
      doc2pdf = "soffice --headless --convert-to pdf";
    };
    
    promptInit = ''
      PS1='\[\033[48;2;237;30;121;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;237;30;121m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\[\033[38;5;226m\]\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
    '';
  };

  # System packages
  environment.systemPackages = with pkgs; [
    # Development tools
    git
    gh
    nodejs
    nodePackages_latest.pnpm
    python311
    vscode-fhs
    
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
    kdenlive
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
    
    # Gaming and Wine
    lutris
    protonup-qt
    wineWowPackages.stable
    winetricks
    
    # PDF and office
    libreoffice
    ocrmypdf
    poppler_utils
    
    # GNOME utilities and themes
    caligula
    copyq
    dconf-editor
    gedit
    gnome-frog
    gnome-terminal
    gnome-tweaks
    gradience
    livecaptions
    pomodoro-gtk
    
    # File management
    fsearch
    megacmd
    popsicle
    
    # GNOME extensions
    gnomeExtensions.battery-indicator-icon 
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-dock
    gnomeExtensions.gsconnect
    gnomeExtensions.just-perfection
    gnomeExtensions.media-controls
    gnomeExtensions.panel-workspace-scroll
    gnomeExtensions.power-profile-switcher
    gnomeExtensions.reorder-workspaces
    gnomeExtensions.space-bar
    gnomeExtensions.tactile
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