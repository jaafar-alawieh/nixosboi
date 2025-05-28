# ~/projects/nix/home/happylime.nix
{ config, pkgs, lib, inputs, ... }:
let configDir = ./hyprland;

in
{
  # Home Manager configuration
  home.stateVersion = "25.05";
  
  # Import complete dconf settings
  imports = [ 
    ./bashrc.nix 
    ./ghostty.nix
    ./environment.nix
    ];
  
  # Enable bash
  programs.bash.enable = true;
  
  # Home configuration files
  home.file = {
      ".config/nvim".source = "${configDir}/nvim";
      ".config/wallpapers".source = "${configDir}/wallpapers";
      ".config/kitty".source = "${configDir}/kitty";
      ".config/neofetch".source = "${configDir}/neofetch";
      ".config/hypr".source = "${configDir}/hypr";
      ".config/swayidle".source = "${configDir}/swayidle";
      ".config/swaylock".source = "${configDir}/swaylock";
      ".config/wlogout".source = "${configDir}/wlogout";
      ".config/waybar".source = "${configDir}/waybar";
      ".config/btop".source = "${configDir}/btop";
      ".config/wofi".source = "${configDir}/wofi";
      ".config/mako".source = "${configDir}/mako";
  };
}
