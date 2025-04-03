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

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

}
