# Home Manager configuration for happylime
{ config, pkgs, lib, inputs, ... }:

{
  # Home Manager configuration
  home.stateVersion = "24.05";
  
  # Enable bash
  programs.bash.enable = true;
  
  # Home configuration files
  home.file = {
  };  
  # Uncomment to import dconf settings when needed
  # imports = [ ../dconf.nix ];
}
