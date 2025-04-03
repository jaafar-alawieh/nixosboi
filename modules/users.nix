# User accounts configuration
{ config, pkgs, lib, ... }:

{
  # User account
  users.users.happylime = {
    isNormalUser = true;
    description = "happylime";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };
}
