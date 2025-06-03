{ config, pkgs, lib, xremap-flake, ... }:

let
  mkTuple = lib.mkTuple;
  gvariant = lib.hm.gvariant;
in {
  # 1) pull in the xremap module from the flake
  imports = [ xremap-flake.homeManagerModules.default ];

  # 2) your xremap remaps
  services.xremap = {
    config.modmap = [{
      name = "Global";
      remap = { "CapsLock" = "Esc"; };
    }];
    config.keymap = [{
      name  = "Example ctrl-u → pageup";
      remap = { "C-u" = "PAGEUP"; };
    }];
  };

  # 3) *all* of your dconf2nix‐generated settings
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "gnupg://" ];
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center     = [ "<Super>s" ];
      home               = [ "<Super>e" ];
      www                = [ "<Super>b" ];
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        # …and so on…
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "ghostty";
      name    = "Terminal";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>c";
      command = "firefox --new-window https://chatgpt.com";
      name    = "ChatGPT";
    };

    # paste in *all* the rest of your dconf2nix blocks here,
    # e.g. custom10–custom23, plus any other paths you care about
    # remember to use mkTuple for tuple values, etc.
  };
}
