#from https://github.com/gpskwlkr/nixos-hyprland-flake/blob/main/system/modules/security.nix
{ pkgs, ... }: 

{
  security.polkit.enable = true;
  security.pam.services.swaylock = {};
  security.pam.services.swaylock.fprintAuth = false;
}