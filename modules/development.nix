# Development tools configuration
{ config, pkgs, lib, ... }:

{
  # Development packages
  environment.systemPackages = with pkgs; [
    # Development tools
    code-cursor
    git
    gh
    ghostty
    lazygit
    nodejs
    nodePackages_latest.pnpm
    python313
    python313Packages.pip
    ### when i need to use python 
    # this is basically a venv for nix 
    # nix-shell -p python313Full python313Packages.numpy python313Packages.matplotlib
    tig
    vscode-fhs
  ];
}
