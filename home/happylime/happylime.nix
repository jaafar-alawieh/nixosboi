# ~/projects/nix/home/happylime.nix
{ config, pkgs, lib, inputs, homeStateVersion, ... }:

{
  # Home Manager state version
  home.stateVersion = homeStateVersion;
  # Import complete dconf settings
  imports = [ 
    ./dconfig.nix 
    ./bashrc.nix 
    ./cursor_code.nix
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
