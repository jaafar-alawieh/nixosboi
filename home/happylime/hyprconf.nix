{ config, pkgs, lib, ... }:

let
  # 1) Fetch nabakdev’s dotfiles repository
  dotfiles = pkgs.fetchFromGitHub {
    owner  = "nabakdev";
    repo   = "dotfiles";
    rev    = "main";
    # You’ll need to fill in the real sha256 from `nix-prefetch-url` or similar
    sha256 = "<FIXME>";
  };

  # 2) A helper that maps a list of relative paths in the repo
  #    to a home.file entry that symlinks them into your $HOME.
  mkLinks = paths:
    lib.listToAttrs (map (path:
      # strip any leading “./”
      let rel = lib.replaceStrings [ "./" ] [ "" ] path; in
      {
        name = rel;
        value = {
          source = "${dotfiles}/${rel}";
        };
      }
    ) paths);

in {
  home.file = lib.recursiveUpdate (mkLinks [
    ".zshrc"
    ".vimrc"
    # all of his .config tree:
    ".config/hypr/hyprland.conf"
    ".config/waybar/config"
    ".config/waybar/style.css"
    ".config/mako/config"
    ".config/wofi/config"
    ".config/foot/foot.ini"
    # if he has a Neovim lua setup, for example:
    ".config/nvim/init.lua"
    ".config/nvim/lua/plugins.lua"
    # …add any other files you want to mirror…
  ]) {};
}
