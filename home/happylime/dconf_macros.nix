# Keeps only keybindings
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {

    # Window manager & workspace keybindings
    "org/gnome/desktop/wm/keybindings" = {
      begin-move = [ "<Super>AudioMute" ];
      begin-resize = [];
      close = [ "<Super>q" ];
      cycle-group = [];
      cycle-group-backward = [];
      cycle-panels = [];
      cycle-panels-backward = [];
      cycle-windows = [];
      cycle-windows-backward = [];
      maximize = [];
      minimize = [ "<Super>h" ];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-workspace-1 = [ "<Control><Super>1" ];
      move-to-workspace-2 = [ "<Control><Super>2" ];
      move-to-workspace-3 = [ "<Control><Super>3" ];
      move-to-workspace-4 = [ "<Control><Super>4" ];
      move-to-workspace-5 = [ "<Control><Super>5" ];
      move-to-workspace-6 = [ "<Control><Super>6" ];
      move-to-workspace-7 = [ "<Control><Super>7" ];
      move-to-workspace-8 = [ "<Control><Super>8" ];
      move-to-workspace-9 = [ "<Control><Super>9" ];
      move-to-workspace-down = [ "<Control><Super>Down" "<Super><Shift>Page_Down" ];
      move-to-workspace-last = [ "<Control><Super>Right" ];
      move-to-workspace-left = [ "<Control><Super>Left" ];
      move-to-workspace-right = [ "<Control><Super>Right" ];
      move-to-workspace-up = [ "<Control><Super>Up" "<Super><Shift>Page_Up" ];
      panel-run-dialog = [ "<Control><Super>r" ];
      show-desktop = [ "<Super>d" ];
      switch-applications = [ "<Alt>Tab" ];
      switch-applications-backward = [ "<Shift><Alt>Tab" ];
      switch-group = [ "<Control>Tab" ];
      switch-group-backward = [ "<Shift><Control>Tab" ];
      switch-input-source = [ "<Super>space" ];
      switch-input-source-backward = [ "<Shift><Super>space" ];
      switch-panels = [];
      switch-panels-backward = [];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-7 = [ "<Super>7" ];
      switch-to-workspace-8 = [ "<Super>8" ];
      switch-to-workspace-9 = [ "<Super>9" ];
      switch-to-workspace-down = [ "<Super>Down" ];
      switch-to-workspace-last = [];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      switch-to-workspace-up = [ "<Super>Up" "<Control><Alt>Up" ];
      switch-windows = [ "<Super>Tab" ];
      switch-windows-backward = [ "<Shift><Super>Tab" ];
      toggle-fullscreen = [ "<Control>Up" ];
      toggle-maximized = [ "<Control>Down" ];
      unmaximize = [];
    };

    # Media-keys (GNOME Settings Daemon)
    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center     = [ "<Super>s" ];
      help               = [];
      home               = [ "<Super>e" ];
      logout             = [];
      www                = [ "<Super>b" ];
      custom-keybindings = [
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom15"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom16"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom19"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom20"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom21"
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom22"
      ];
    };

    # Custom media-keybinds
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "";
      command = "sh -c 'sleep 1 && xset dpms force off'";
      name    = "xscreen off";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Control><Super>t";
      command = "gedit";
      name    = "gedit";
    };
    # …and so on for custom2 through custom22, each WITHOUT any leading/trailing slash

    # GNOME Shell keybindings
    "org/gnome/shell/keybindings" = {
      focus-active-notification     = [];
      open-application-menu         = [ "<Control>grave" ];
      open-new-window-application-2 = [];
      open-new-window-application-3 = [];
      open-new-window-application-4 = [];
      screenshot                    = [];
      screenshot-window             = [];
      show-screen-recording-ui      = [];
      show-screenshot-ui            = [ "<Shift><Super>s" ];
      switch-to-application-1       = [];
      switch-to-application-2       = [];
      switch-to-application-3       = [];
      switch-to-application-4       = [];
      switch-to-application-5       = [];
      switch-to-application-6       = [];
      switch-to-application-7       = [];
      switch-to-application-8       = [];
      switch-to-application-9       = [];
      toggle-message-tray           = [ "<Super>n" ];
      toggle-overview               = [];
      toggle-quick-settings         = [];
    };

    # Mutter keybindings
    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left  = [ "<Control>Left" ];
      toggle-tiled-right = [ "<Control>Right" ];
    };
    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    # Space-bar extension
    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      activate-empty-key                  = [];
      activate-previous-key               = [];
      enable-activate-workspace-shortcuts = false;
      open-menu                           = [ "<Super>grave" ];
    };
  };
}