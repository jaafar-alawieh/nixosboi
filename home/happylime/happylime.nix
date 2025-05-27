# ~/projects/nix/home/happylime.nix
{ config, pkgs, lib, inputs, ... }:

{
  # Home Manager configuration
  home.stateVersion = "25.05";
  
  # Import complete dconf settings
  imports = [ 
    ./bashrc.nix 
    ./ghostty.nix
    ];
  
  # Enable bash
  programs.bash.enable = true;
  
  # Home configuration files
  home.file = { #add any
  };

  # Resolving weird error for input-method for asian characters
  i18n.inputMethod = {
    enabled = "none";
  };

}
