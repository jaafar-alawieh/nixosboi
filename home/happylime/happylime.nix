# ~/projects/nix/home/happylime.nix
{ config, pkgs, lib, inputs, ... }:

{
  # Home Manager configuration
  home.stateVersion = "25.05";
  
  # Import complete dconf settings
  imports = [ 
    ./bashrc.nix 
    ./ghostty.nix
    ./dconf_macros.nix
    ];
  
  # Enable bash
  programs.bash.enable = true;
  
  # Home configuration files
  home.file = { #add any
  };

}
