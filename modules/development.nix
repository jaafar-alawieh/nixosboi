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
    python311
    tig
    vscode-fhs
  ];
}
