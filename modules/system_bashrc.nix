# ~/projects/nix/modules/system_bashrc.nix
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
      conv = "cursor ~/projects/nix/ & disown";
      updateflake = "cd ~/projects/nix && sudo nix flake update";
      rrebuild = "sudo nixos-rebuild switch --impure --flake /home/happylime/projects/nix#nixos && git -C /home/happylime/projects/nix add . && git -C /home/happylime/projects/nix commit -m 'Auto-update flake & rebuild' && git -C /home/happylime/projects/nix push";
      conf = "cd ~/projects/nix && ls";
      nixclean = "sudo nix-env --delete-generations old && sudo nix-store --gc && for link in /nix/var/nix/gcroots/auto/*; do sudo rm $(readlink $link); done && sudo nix-collect-garbage -d";

      # dconf management
      dconfigure = "sudo nano ~/projects/nix/home/dconf/settings.nix";
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
