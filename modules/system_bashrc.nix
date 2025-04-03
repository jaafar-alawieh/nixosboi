# Bash shell configuration
{ config, pkgs, lib, ... }:

{
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
      conv = "code ~/projects/nix/";
      revuild = "sudo cp -r ~/projects/nix/* /etc/nixos/ && sudo nixos-rebuild switch --flake /etc/nixos#nixos && [ $? -eq 0 ] && git -C ~/projects/nix add . && git -C ~/projects/nix commit -m 'auto rebuild commit' && git -C ~/projects/nix push";
      conf = "cd ~/projects/nix && ls";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos && [ $? -eq 0 ] && now=$(date +'%Y-%m-%d_%H-%M-%S') && mkdir -p /etc/nixos/conffiles/backups && cp /etc/nixos/configuration.nix /etc/nixos/conffiles/backups/configuration.$now.nix";
      nixclean = "sudo nix-env --delete-generations old && sudo nix-store --gc && for link in /nix/var/nix/gcroots/auto/*; do sudo rm $(readlink $link); done && sudo nix-collect-garbage -d";

      # dconf management
      dconfigure = "sudo nano /etc/nixos/dconf/settings.nix";
      dconfbackup = "dconf dump / | dconf2nix > dconf.nix ; sudo cp dconf.nix ~/projects/nix/home/dconf/settings.nix";
      dconfbackuphalf = "dconf dump / | dconf2nix > dconf.nix";
      
      # Applications
      nano = "nano -l";
      doc2pdf = "soffice --headless --convert-to pdf";
    };
    
    promptInit = ''
	      PS1='\[\033[48;2;237;30;121;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;237;30;121m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\[\033[38;5;226m\]\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '    '';
  };
}
