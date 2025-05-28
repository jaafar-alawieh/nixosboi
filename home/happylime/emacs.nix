{ config, pkgs, ... }:

{
  programs.emacs = {
    enable = true;

    extraConfig = ''
      (load-theme 'dracula t)
    '';
  };
}
