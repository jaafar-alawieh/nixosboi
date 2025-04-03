# Main configuration file that imports all modules
{ config, pkgs, lib, inputs, ... }:

{
  # This file is the central point of your configuration
  # It primarily focuses on importing other modules
  # Keep this file minimal - put actual settings in the module files

  # Enable flakes and nix-command
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # System state version - IMPORTANT: Don't change this
  system.stateVersion = "23.11";

  # Make configuration.nix backup on rebuild
#  system.copySystemConfiguration = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Create necessary directories
  systemd.tmpfiles.rules = [
    "d /etc/nixos/conffiles 0755 root root"
    "d /etc/nixos/conffiles/backups 0755 root root"
    "d /etc/nixos/conffiles/scripts 0755 root root"
  ];
  
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
      revuild = "cp -r ~/projects/nix/* /etc/nixos/ && sudo nixos-rebuild switch --flake /etc/nixos#nixos && [ $? -eq 0 ] && git -C ~/projects/nix add . && git -C ~/projects/nix commit -m 'auto rebuild commit' && git -C ~/projects/nix push";
      conf = "sudo nano -l /etc/nixos/configuration.nix";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos && [ $? -eq 0 ] && now=$(date +'%Y-%m-%d_%H-%M-%S') && mkdir -p /etc/nixos/conffiles/backups && cp /etc/nixos/configuration.nix /etc/nixos/conffiles/backups/configuration.$now.nix";
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
}
