# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, fetchurl, self, nix-pkgs, buildEnv, ... }:

{
  imports =
    [ <home-manager/nixos>
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./gnome-manager/gnome.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  system.copySystemConfiguration = true;

  # Set your time zone.
  time.timeZone = "Asia/Beirut";

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

  ##POWERSAVING TEST
#  services.auto-cpufreq.enable = true;
#  services.auto-cpufreq.settings = {
#    battery = {
#      governor = "powersave";
#      turbo = "never";
#    };
#    charger = {
#      governor = "performance";
#      turbo = "auto";
#    };
#  };
  ###powertop
  powerManagement.powertop.enable = true;
  ## Battery End


  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.happylime = {
    isNormalUser = true;
    description = "happylime";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    #  thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  #flatpak support
  #services.flatpak.enable = true;

  #wifi patch
  nixpkgs.config.packageOverrides = pkgs: rec {
    wpa_supplicant = pkgs.wpa_supplicant.overrideAttrs (attrs: {
      patches = attrs.patches ++ [ ./eduroam.patch ];
    });
  };
  #end of wifi patch

  #create directories
  systemd.tmpfiles.rules = [
    "d /etc/nixos/conffiles 0755 root root"
    "d /etc/nixos/conffiles/backups 0755 root root"
    "d /etc/nixos/conffiles/scripts 0755 root root"
  ];


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
  home-manager.users."happylime" = {
    home.stateVersion="23.05";
    programs.bash.enable = true;
    #imports = [ ./dconf.nix ];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
	dconf2nix
  	firefox
	gh #github cli tool
	git
	gradience
	gnome.gedit
  	gnome3.gnome-tweaks
  	gnome.dconf-editor
  	gnome.gnome-terminal
  	home-manager
	keepassxc
	libreoffice
  	nano
	neofetch
	neovim
	nodePackages_latest.pnpm #package for webdev experiment 
	powertop
	python311
	teams
  	vim 
	vscode-fhs
  	wget
	xorg.xkill
	#gnome extensions
	gnomeExtensions.battery-indicator-icon 
	gnomeExtensions.caffeine
	gnomeExtensions.clipboard-indicator
	gnomeExtensions.color-picker
	gnomeExtensions.custom-hot-corners-extended
	gnomeExtensions.dash-to-dock
	gnomeExtensions.just-perfection
	gnomeExtensions.reorder-workspaces
	gnomeExtensions.simple-system-monitor
	gnomeExtensions.tactile
	gnomeExtensions.top-panel-workspace-scroll
	gnomeExtensions.transparent-top-bar-adjustable-transparency
	gnomeExtensions.transparent-window-moving
	gnomeExtensions.vertical-workspaces
	gnomeExtensions.space-bar
	#gnome themes
	flat-remix-gnome
	dracula-theme
	rose-pine-gtk-theme
	#gnome icons
	rose-pine-icon-theme
	tela-icon-theme	
	#scripts
	(import ./conffiles/scripts/jump_script.nix { inherit pkgs; })
  ];

  #fonts
  fonts.fonts = with pkgs; [
  corefonts
  vistafonts
  wine64Packages.fonts
];


  #custom aliases for bash and maybe some future program customizations
  programs = {
    bash = {
#      shellInit 
      
      shellAliases = {
	l = "ls -alh";
	ll = "ls -l";
	ls = "ls --color=tty";
        gs = "git status";
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
  system.stateVersion = "23.05"; # Did you read the comment?

}
