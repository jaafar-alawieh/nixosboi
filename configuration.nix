# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, fetchurl, self, nix-pkgs, buildEnv, ... }:

let
  #NUR for spotify
  nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
    inherit pkgs;
  #end of NUR for spotify
  };

in
{
  imports =
    [ <home-manager/nixos>
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #one day ill have functioning hibernate
  #boot.resumeDevice = "/var/lib/swapfile";
  #boot.kernelParams = [
  #  "resume=/var/lib/swapfile"
  #  "resume_offset=49250304"
  #];

  #update
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = true;
  system.autoUpgrade.channel = "https://channels.nixos.org/nixos-23.11";


  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  system.copySystemConfiguration = true;

  # Set your time zone.
  #time.timeZone = "Asia/Beirut";
  time.timeZone = "Europe/Paris";
  # Set Default Language

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
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

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # #hyprland
  # programs.hyprland = {
  #   enable = true;
  #   xwayland.enable = true;
  # };
  # environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # #hyprland xdg portal #not sure if i need this
  xdg.portal.enable = true;
  # xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };



  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;


  #dont think i need this: users.mutableUsers = true;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jalawieh = {
    isNormalUser = true;
    description = "jalawieh";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
      #thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  #insecure packages
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];


  #flatpak support
  services.flatpak.enable = true;


  ##general overrides

  nixpkgs.config.packageOverrides = pkgs: rec {
  #wifi patch
    wpa_supplicant = pkgs.wpa_supplicant.overrideAttrs (attrs: {
      patches = attrs.patches ++ [ ./eduroam.patch ];
    });  
  #end of wifi patch 
  

  #NUR for spotify
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  #end of NUR for spotify

  };
  #end of overrides

  #create directories
  systemd.tmpfiles.rules = [
    "d /etc/nixos/conffiles 0755 root root"
    "d /etc/nixos/conffiles/backups 0755 root root"
    "d /etc/nixos/conffiles/scripts 0755 root root"
  ];
  #end of create directories
  
  #First script systemd timer
  # systemd.services.mega_keepass_backup = {
  #   serviceConfig.Type = "oneshot";
  #   script = ''
  #     #!/usr/bin/env nix-shell
  #     #!nix-shell -i bash -p mega-cmd

  #     echo "Script started at $(date)"

  #     # Set PATH to include megacmd
  #     export PATH=$PATH:${pkgs.megacmd}/bin
  #     mega-login ez.synchro@gmail.com ${secrets.megapassword}
  #     if mega-put $HOME/Documents/Keepass/JaafarDatabase.kdbx /keepass_database > /tmp/mega_backup.log 2>&1; then
  #       echo "Script completed at $(date)"
  #     else
  #       echo "Error: mega-put command failed. Check /tmp/mega_backup.log for details."
  #     fi
  #   '';
  # };

  systemd.timers.mega_keepass_backup = {
    wantedBy = [ "timers.target" ];
    partOf = [ "mega_keepass_backup.service" ];
    timerConfig.OnCalendar = [ "daily" ];
    timerConfig.Persistent = true;
  };
  #end of first script systemd timer
  
  ####only for jaafar's backlight https://www.reddit.com/r/NixOS/comments/16on943/comment/k1m3f6g/?context=3
  systemd.services.disable-keyboard-backlight = {
    enable = true;
    description = "Disable keyboard backlight on resume";
    serviceConfig = {
      Type = "oneshot";
    };
    script = ''
      /run/current-system/sw/bin/echo 0 > "/sys/devices/pci0000:00/0000:00:14.3/PNP0C09:00/VPC2004:00/leds/platform::kbd_backlight/brightness"
    '';
    wantedBy = [
      "sleep.target"
      "hibernate.target"
      "hybrid-sleep.target"
    ];
    after = [
      "sleep.target"
      "hibernate.target"
      "hybrid-sleep.target"
    ];
  };
  #####only for jaafar's backlight - DELETE FOR OTHER COMPUTERS

  #calling github bashfiles
  ##bashfile 1
  #  buildEnv {
  #    name = "custom-scripts-env";
  #    paths = [
  #      (lib.dontUnpack {
  #        name = "custom-scripts";
  #        builder = ./builder.sh;
  #        src = fetchurl {
  #          url = "https://raw.githubusercontent.com/jaafar-alawieh/nixosboi/main/dconfbackup.sh"; # Replace with the correct URL
  #          sha256 = "0cglyppx1id90gvkvhai6irmib8741dbags4pb512g0wnhsdfd8a"; # Replace with the correct hash
  #        };
  #      })
  #    ];
  # }
  
  #GNOME DCONF SETTINGS ##Use `dconf watch /` to track stateful changes you are doing, then set them here.
  #comment out dconf.nix line when done with it so it doesnt keep undoing new adjustments
  #when you need to update it:
  ##  dconf dump / | dconf2nix > dconf.nix
  ##  sudo cp dconf.nix /etc/nixos/dconf.nix 
  programs.steam = {
  enable = true;
  remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
  home-manager.users."jalawieh" = {
    home.stateVersion="23.11";
    programs.bash.enable = true;
    #imports = [ ./dconf.nix ];
    home.file."touchegg".target = "/config/touchegg/touchegg.conf";
    home.file."touchegg".source = "/etc/nixos/conffiles/touchegg.conf";  # or .text if I just want to include everything in a nix config file and import it
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	brave
	dconf2nix
  firefox
  ffmpeg_5-full
	fsearch
	gh #github cli tool
	gimp-with-plugins
	git
	glaxnimate #kdenlive dependency why tf aint it predownloaded
	gnome-frog
	gnome.gedit
  gnome3.gnome-tweaks
  gnome.dconf-editor
  gnome.gnome-terminal
	gradience
  gzdoom
  home-manager
	imagemagick #CLI converter
	keepassxc
	libreoffice
  librewolf
	libsForQt5.kdenlive #kdenlive
	livecaptions
	lmms
	mediainfo #kdenlive dependency why tf aint it predownloaded
	megacmd
  mpv
	mullvad-vpn
  nano
	neofetch
	neovim
	nodePackages_latest.pnpm #package for webdev experiment 
	obs-studio
	ocrmypdf #pdf tool
  pass
  #pass-wayland
	poppler_utils #anotherpdf toolfml
	powertop
	python311
	qbittorrent
  #sops-nix
	#teams
  qtpass
	tenacity
	tldr
	ungoogled-chromium
	unzip
  vim 
	vlc
	vscode-fhs
	webex
  wget
  wmctrl
  ydotool
	youtube-music
	zip
  zoom-us
	#NUR
	nur.repos.nltch.spotify-adblock    #for installing spotify-adblock
	#hyprland
  # dunst #notif
  # kitty #terminal
  # mako #notif
  # libnotify #notif
  # wofi #gtk rofi that's used to launch apps
  # swww #wallpaper
  # waybar #topbar

  #gnome extensions 
	gnomeExtensions.battery-indicator-icon 
	gnomeExtensions.caffeine
	gnomeExtensions.clipboard-indicator
	gnomeExtensions.dash-to-dock
  gnomeExtensions.gsconnect
	gnomeExtensions.just-perfection
	gnomeExtensions.media-controls
	gnomeExtensions.power-profile-switcher
	gnomeExtensions.reorder-workspaces
	gnomeExtensions.tactile
  gnomeExtensions.panel-workspace-scroll
	gnomeExtensions.transparent-top-bar-adjustable-transparency
	gnomeExtensions.transparent-window-moving
	#gnomeExtensions.scroll-panel #wait for this to be compatible; more features
  gnomeExtensions.space-bar
  gnomeExtensions.workspace-matrix
	#gnome themes
	flat-remix-gnome
	dracula-theme
	rose-pine-gtk-theme
	#gnome icons
	rose-pine-icon-theme
	tela-icon-theme	
  #gnome cursor
  bibata-cursors
	#scripts
	(import ./conffiles/scripts/jump_script.nix { inherit pkgs; })
  ];

  #fonts
  fonts.packages = with pkgs; [
  corefonts
  vistafonts
  wine64Packages.fonts
  ];


  #custom aliases for bash and maybe some future program customizations
  programs = {
    bash = {
      #shellInit       
      shellAliases = {
        l = "ls -alh";
        ll = "ls -l";
        ls = "ls --color=tty";
        conv = "code ~/projects/nix/configuration.nix";
        revuild = "sudo cp ~/projects/nix/configuration.nix /etc/nixos/configuration.nix && sudo nixos-rebuild switch && [ $? -eq 0 ] && git -C ~/projects/nix add . && git -C ~/projects/nix commit -m 'auto rebuild commit' && git -C ~/projects/nix push";
        conf = "sudo nano -l /etc/nixos/configuration.nix";
        rebuild = "sudo nixos-rebuild switch && [ $? -eq 0 ] && now=$(date +'%Y-%m-%d_%H-%M-%S') && sudo cp /etc/nixos/configuration.nix /etc/nixos/conffiles/backups/configuration.$now.nix";
        nano = "nano -l";
        nixscripts = "cd /etc/nixos/conffiles/scripts";
        cp = "cp -i";
        mv = "mv -i";
        mkdir = "mkdir -p";
        home = "cd ~";
        cb = "cd ..";
        cbb = "cd ../..";
        cbbb = "cd ../../..";
        cbbbb = "cd ../../../.."; 
        doc2pdf = "soffice --headless --convert-to pdf ";
        dconfigure = "sudo nano /etc/nixos/dconf.nix";
        dconfbackup = "dconf dump / | dconf2nix > dconf.nix ; sudo cp dconf.nix /etc/nixos/dconf.nix; sudo cp dconf.nix ~/projects/nix/dconf.nix";
        dconfbackuphalf = "dconf dump / | dconf2nix > dconf.nix ";
        # Add your aliases here
        };	  
      promptInit = ''
	      PS1='\[\033[48;2;237;30;121;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;237;30;121m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\[\033[38;5;226m\]\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
  	  '' ;
    };
    #next program
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:
  services.mullvad-vpn = {
	enable = true;
  };
  networking.iproute2.enable = true;
  networking.firewall.enable = false;

  #networking.firewall.allowedTCPPorts = [ 1080 1081 5389 6389 7389 5022 5122 5222 8389 10121 10122 10123 10124 10125 10126 3389 4389 80 443 1401 1716 1717 1718 1719 1720 1721 1722 1723 1724 1725 1726 1727 1728 1729 1730 1731 1732 1733 1734 1735 1736 1737 1738 1739 1740 1741 1742 1743 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754 1755 1756 1757 1758 1759 1760 1761 1762 1763 1764 ];

  #networking.firewall.allowedUDPPorts = [ 1080 1081 5389 6389 7389 5022 5122 5222 8389 10121 10122 10123 10124 10125 10126 3389 4389 53 1194 1195 1196 1197 1300 1301 1302 1303 1400 1401 1716 1717 1718 1719 1720 1721 1722 1723 1724 1725 1726 1727 1728 1729 1730 1731 1732 1733 1734 1735 1736 1737 1738 1739 1740 1741 1742 1743 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754 1755 1756 1757 1758 1759 1760 1761 1762 1763 1764 ];

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
