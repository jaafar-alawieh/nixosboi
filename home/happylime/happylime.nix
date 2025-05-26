# ~/projects/nix/home/happylime.nix
{ config, pkgs, lib, inputs, ... }:

{
  # Home Manager configuration
  home.stateVersion = "25.05";
  
  # Import complete dconf settings
  imports = [ 
    #../dconf/settings.nix 
    ./bashrc.nix 
    ./ghostty.nix
    ];
  
  # Enable bash
  programs.bash.enable = true;
  
  # Home configuration files
  home.file = { #add any
  };

  # Enable dconf
  dconf.enable = true;
}
