# System-specific configuration
{ config, pkgs, lib, ... }:

{
  # Basic system setup
  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
    flake = "/etc/nixos";
    flags = ["--update-input" "nixpkgs" "--commit-lock-file"];
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
  
  # Time zone settings
  time.timeZone = "Europe/London";
  # Alternate timezones (uncomment as needed)
  # time.timeZone = "Europe/Paris";
  # time.timeZone = "Asia/Beirut";
  
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

  # Fonts
  fonts.packages = with pkgs; [
    corefonts
    inter-nerdfont
    vistafonts
    wine64Packages.fonts
  ];
  
  # Flatpak support
  services.flatpak.enable = true;
  
  # Create necessary directories
  systemd.tmpfiles.rules = [
    "d /etc/nixos/conffiles 0755 root root"
    "d /etc/nixos/conffiles/backups 0755 root root"
  ];
}
