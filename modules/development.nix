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
    tig
    vscode-fhs
  ];
}
