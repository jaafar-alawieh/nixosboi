# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {

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

    "org/gnome/mutter" = {
      center-new-windows = false;
      dynamic-workspaces = false;
      edge-tiling = false;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Control>Left" ];
      toggle-tiled-right = [ "<Control>Right" ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center = [ "<Super>s" ];
      custom-keybindings = [ "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom15" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom16" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom19" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom20" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom21" "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom22" ];
      help = [];
      home = [ "<Super>e" ];
      logout = [];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "";
      command = "sh -c 'sleep 1 && xset dpms force off'";
      name = "xscreen off";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Control><Super>t";
      command = "gedit";
      name = "gedit";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10" = {
      binding = "<Super>1";
      command = "xdotool set_desktop 0";
      name = "Switch to Workspace 1";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11" = {
      binding = "<Super>2";
      command = "xdotool set_desktop 1";
      name = "Switch to Workspace 2";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12" = {
      binding = "<Super>3";
      command = "xdotool set_desktop 2";
      name = "Switch to Workspace 3";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13" = {
      binding = "<Super>4";
      command = "xdotool set_desktop 3";
      name = "Switch to Workspace 4";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14" = {
      binding = "<Super>5";
      command = "xdotool set_desktop 4";
      name = "Switch to Workspace 5";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom15" = {
      binding = "<Super>6";
      command = "xdotool set_desktop 5";
      name = "Switch to Workspace 6";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom16" = {
      binding = "<Super>7";
      command = "xdotool set_desktop 6";
      name = "Switch to Workspace 7";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17" = {
      binding = "<Super>8";
      command = "xdotool set_desktop 7";
      name = "Switch to Workspace 8";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18" = {
      binding = "<Super>9";
      command = "xdotool set_desktop 8";
      name = "Switch to Workspace 9";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom19" = {
      binding = "<Super>c";
      command = "firefox --new-window https://chat.openai.com/";
      name = "ChatGPT";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom20" = {
      binding = "<Shift><Super>m";
      command = "bash -c 'screen_width=$(xdpyinfo | grep dimensions | awk \"{print \\$2}\" | cut -d \"x\" -f 1) && screen_height=$(xdpyinfo | grep dimensions | awk \"{print \\$2}\" | cut -d \"x\" -f 2) && window_width=$((screen_width / 2)) && window_height=$((screen_height / 2)) && bash -c \"spotify & disown\" && bash -c \"youtube-music & disown\" && xdotool search --name \"Spotify\" windowmove 0 0 windowsize ${window_width} ${window_height} && xdotool search --name \"YouTube Music\" windowmove ${window_width} 0 windowsize ${window_width} ${window_height}'n";
      name = "DOUBLE Music";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom22" = {
      binding = "<Control><Super>l";
      command = "busctl --user call org.gnome.Shell /org/gnome/ScreenSaver org.gnome.ScreenSaver SetActive b true n";
      name = "wayland screen off";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
      binding = "<Super>j";
      command = "nautilus Downloads";
      name = "Downloads";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" = {
      binding = "<Super>x";
      command = "xkill";
      name = "xkill";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5" = {
      binding = "<Control><Super>i";
      command = "systemctl suspend";
      name = "Suspend";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6" = {
      binding = "<Super>MonBrightnessDown";
      command = "sh -c 'sleep 1; dbus-send --session --dest=org.gnome.ScreenSaver --type=method_call \\/org/gnome/ScreenSaver org.gnome.ScreenSaver.SetActive boolean:true'";
      name = "gnome sleep -- for wayland";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7" = {
      binding = "<Super>t";
      command = "gnome-terminal";
      name = "Launch terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8" = {
      binding = "<Super>w";
      command = "sh -c 'if xdotool search --name \"WhatsApp\"; then xdotool windowactivate --sync $(xdotool search --name \"WhatsApp\"); else firefox --new-window https://web.whatsapp.com/; fin'";
      name = "Whatsapp";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9" = {
      binding = "<Super>f";
      command = "fsearch";
      name = "fsearch";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      app-ctrl-hotkey-10 = [ "" ];
      app-ctrl-hotkey-2 = [ "" ];
      app-ctrl-hotkey-3 = [ "" ];
      app-ctrl-hotkey-4 = [ "" ];
      app-ctrl-hotkey-5 = [ "" ];
      app-ctrl-hotkey-6 = [ "" ];
      app-ctrl-hotkey-7 = [ "" ];
      app-ctrl-hotkey-8 = [ "" ];
      app-ctrl-hotkey-9 = [ "" ];
      app-ctrl-hotkey-kp-1 = [ "" ];
      app-ctrl-hotkey-kp-10 = [ "" ];
      app-ctrl-hotkey-kp-2 = [ "" ];
      app-ctrl-hotkey-kp-3 = [ "" ];
      app-ctrl-hotkey-kp-4 = [ "" ];
      app-ctrl-hotkey-kp-5 = [ "" ];
      app-ctrl-hotkey-kp-6 = [ "" ];
      app-ctrl-hotkey-kp-7 = [ "" ];
      app-ctrl-hotkey-kp-8 = [ "" ];
      app-ctrl-hotkey-kp-9 = [ "" ];
      app-hotkey-1 = [ "" ];
      app-hotkey-10 = [ "" ];
      app-hotkey-2 = [ "" ];
      app-hotkey-3 = [ "" ];
      app-hotkey-4 = [ "" ];
      app-hotkey-5 = [ "" ];
      app-hotkey-6 = [ "" ];
      app-hotkey-7 = [ "" ];
      app-hotkey-8 = [ "" ];
      app-hotkey-9 = [ "" ];
      app-hotkey-kp-1 = [ "" ];
      app-hotkey-kp-10 = [ "" ];
      app-hotkey-kp-2 = [ "" ];
      app-hotkey-kp-3 = [ "" ];
      app-hotkey-kp-4 = [ "" ];
      app-hotkey-kp-5 = [ "" ];
      app-hotkey-kp-6 = [ "" ];
      app-hotkey-kp-7 = [ "" ];
      app-hotkey-kp-8 = [];
      app-hotkey-kp-9 = [ "" ];
      app-shift-hotkey-1 = [ "" ];
      app-shift-hotkey-10 = [ "" ];
      app-shift-hotkey-2 = [ "" ];
      app-shift-hotkey-3 = [ "" ];
      app-shift-hotkey-4 = [ "" ];
      app-shift-hotkey-5 = [ "" ];
      app-shift-hotkey-6 = [ "" ];
      app-shift-hotkey-7 = [ "" ];
      app-shift-hotkey-8 = [ "" ];
      app-shift-hotkey-9 = [ "" ];
      app-shift-hotkey-kp-1 = [ "" ];
      app-shift-hotkey-kp-10 = [ "" ];
      app-shift-hotkey-kp-2 = [ "" ];
      app-shift-hotkey-kp-3 = [ "" ];
      app-shift-hotkey-kp-4 = [ "" ];
      app-shift-hotkey-kp-5 = [ "" ];
      app-shift-hotkey-kp-6 = [ "" ];
      app-shift-hotkey-kp-7 = [ "" ];
      app-shift-hotkey-kp-8 = [ "" ];
      app-shift-hotkey-kp-9 = [ "" ];
      apply-custom-theme = false;
      background-color = "rgb(61,56,70)";
      background-opacity = 0.4;
      click-action = "minimize";
      custom-background-color = true;
      custom-theme-customize-running-dots = true;
      custom-theme-running-dots-border-color = "rgb(220,138,221)";
      custom-theme-running-dots-border-width = 0;
      custom-theme-running-dots-color = "rgb(143,240,164)";
      custom-theme-shrink = true;
      dash-max-icon-size = 48;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      running-indicator-dominant-color = false;
      running-indicator-style = "DOTS";
      show-show-apps-button = false;
      show-trash = false;
      transparency-mode = "FIXED";
      unity-backlit-items = false;
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      app-ctrl-hotkey-1 = [ "" ];
      app-ctrl-hotkey-10 = [ "" ];
      app-ctrl-hotkey-2 = [ "" ];
      app-ctrl-hotkey-3 = [ "" ];
      app-ctrl-hotkey-4 = [ "" ];
      app-ctrl-hotkey-5 = [ "" ];
      app-ctrl-hotkey-6 = [ "" ];
      app-ctrl-hotkey-7 = [ "" ];
      app-ctrl-hotkey-8 = [ "" ];
      app-ctrl-hotkey-9 = [ "" ];
      app-ctrl-hotkey-kp-1 = [ "" ];
      app-ctrl-hotkey-kp-10 = [ "" ];
      app-ctrl-hotkey-kp-2 = [ "" ];
      app-ctrl-hotkey-kp-3 = [ "" ];
      app-ctrl-hotkey-kp-4 = [ "" ];
      app-ctrl-hotkey-kp-5 = [ "" ];
      app-ctrl-hotkey-kp-6 = [ "" ];
      app-ctrl-hotkey-kp-7 = [ "" ];
      app-ctrl-hotkey-kp-8 = [ "" ];
      app-ctrl-hotkey-kp-9 = [ "" ];
      app-hotkey-kp-1 = [ "" ];
      app-hotkey-kp-10 = [ "" ];
      app-hotkey-kp-2 = [ "" ];
      app-hotkey-kp-3 = [ "" ];
      app-hotkey-kp-4 = [ "" ];
      app-hotkey-kp-5 = [ "" ];
      app-hotkey-kp-6 = [ "" ];
      app-hotkey-kp-7 = [ "" ];
      app-hotkey-kp-8 = [ "" ];
      app-hotkey-kp-9 = [ "" ];
      app-shift-hotkey-1 = [ "" ];
      app-shift-hotkey-10 = [ "" ];
      app-shift-hotkey-2 = [ "" ];
      app-shift-hotkey-3 = [ "" ];
      app-shift-hotkey-4 = [ "" ];
      app-shift-hotkey-5 = [ "" ];
      app-shift-hotkey-6 = [ "" ];
      app-shift-hotkey-7 = [ "" ];
      app-shift-hotkey-8 = [ "" ];
      app-shift-hotkey-9 = [ "" ];
      app-shift-hotkey-kp-1 = [ "" ];
      app-shift-hotkey-kp-10 = [ "" ];
      app-shift-hotkey-kp-2 = [ "" ];
      app-shift-hotkey-kp-3 = [ "" ];
      app-shift-hotkey-kp-4 = [ "" ];
      app-shift-hotkey-kp-5 = [ "" ];
      app-shift-hotkey-kp-6 = [ "" ];
      app-shift-hotkey-kp-7 = [ "" ];
      app-shift-hotkey-kp-8 = [ "" ];
      app-shift-hotkey-kp-9 = [ "" ];
    };

    "org/gnome/shell/extensions/reorder-workspaces" = {
      keybinding-behavior-outside-of-overview = "disabled";
      move-workspace-next = [ "<Shift>Right" ];
      move-workspace-prev = [ "<Shift>Left" ];
    };

    "org/gnome/shell/extensions/tactile" = {
      show-tiles = [ "<Alt>t" ];
    };

    "org/gnome/shell/extensions/tiling-assistant" = {
      activate-layout0 = [];
      activate-layout1 = [];
      activate-layout2 = [];
      activate-layout3 = [];
      auto-tile = [];
      center-window = [];
      debugging-free-rects = [];
      debugging-show-tiled-rects = [];
      default-move-mode = 0;
      dynamic-keybinding-behavior = 0;
      enable-tiling-popup = false;
      focus-hint = 0;
      focus-hint-color = "rgb(53,132,228)";
      import-layout-examples = false;
      last-version-installed = 50;
      restore-window = [ "<Super>Down" ];
      search-popup-layout = [];
      tile-bottom-half = [ "<Super>KP_2" ];
      tile-bottom-half-ignore-ta = [];
      tile-bottomleft-quarter = [ "<Super>KP_1" ];
      tile-bottomleft-quarter-ignore-ta = [];
      tile-bottomright-quarter = [ "<Super>KP_3" ];
      tile-bottomright-quarter-ignore-ta = [];
      tile-edit-mode = [];
      tile-left-half = [ "<Super>Left" "<Super>KP_4" ];
      tile-left-half-ignore-ta = [];
      tile-maximize = [ "<Super>Up" "<Super>KP_5" ];
      tile-maximize-horizontally = [];
      tile-maximize-vertically = [];
      tile-right-half = [ "<Super>Right" "<Super>KP_6" ];
      tile-right-half-ignore-ta = [];
      tile-top-half = [ "<Super>KP_8" ];
      tile-top-half-ignore-ta = [];
      tile-topleft-quarter = [ "<Super>KP_7" ];
      tile-topleft-quarter-ignore-ta = [];
      tile-topright-quarter = [ "<Super>KP_9" ];
      tile-topright-quarter-ignore-ta = [];
      toggle-always-on-top = [];
      toggle-tiling-popup = [];
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [];
      open-application-menu = [ "<Control>grave" ];
      open-new-window-application-2 = [];
      open-new-window-application-3 = [];
      open-new-window-application-4 = [];
      screenshot = [];
      screenshot-window = [];
      show-screen-recording-ui = [];
      show-screenshot-ui = [ "<Shift><Super>s" ];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      switch-to-application-5 = [];
      switch-to-application-6 = [];
      switch-to-application-7 = [];
      switch-to-application-8 = [];
      switch-to-application-9 = [];
      toggle-message-tray = [ "<Super>n" ];
      toggle-overview = [];
      toggle-quick-settings = [];
    };
  };
}