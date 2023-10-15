# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "secret-service:///org/freedesktop/secrets/collection/login" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 476;
      width = 600;
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/";
      saved-view = "/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/ftpix/transparentbar" = {
      dark-full-screen = false;
      transparency = 0;
    };

    "com/github/GradienceTeam/Gradience" = {
      first-run = false;
      last-opened-version = "0.4.1";
      user-flatpak-theming-gtk3 = true;
      user-flatpak-theming-gtk4 = true;
      window-fullscreen = false;
      window-height = 700;
      window-maximized = false;
      window-width = 1000;
    };

    "net/sapples/LiveCaptions" = {
      active-model = "/nix/store/ikbam9k4kjw51hjbp5asxhivhgr2bc7s-april-english-dev-01110_en.april";
      benchmark = 2.5;
      fade-text = false;
      filter-profanity = false;
      filter-slurs = false;
      font-name = "Source Sans 3 16";
      keep-on-top = true;
      line-width = 80;
      microphone = false;
      save-history = true;
      text-uppercase = false;
      window-transparency = 0.25;
    };

    "org/gnome/Console" = {
      font-scale = 1.1;
      last-window-size = mkTuple [ 1155 1366 ];
      theme = "night";
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/TextEditor" = {
      show-line-numbers = true;
      style-scheme = "classic-dark";
      style-variant = "dark";
    };

    "org/gnome/Totem" = {
      active-plugins = [ "movie-properties" "screenshot" "skipto" "autoload-subtitles" "mpris" "rotation" "recent" "save-file" "vimeo" "open-directory" "apple-trailers" "screensaver" "variable-rate" ];
      subtitle-encoding = "UTF-8";
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 960 600 ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = true;
      window-size = mkTuple [ 646 600 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 980 640 ];
    };

    "org/gnome/desktop/a11y/interface" = {
      high-contrast = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///nix/store/gn8hsv7wm49bsqzv3i3sprl6qz03lmxl-wallpaper.jpg";
      picture-uri-dark = "/home/happylime/.config/background";
      primary-color = "#241f31";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-format = "24h";
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "Adwaita";
      document-font-name = "Cantarell 12";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Cantarell 12";
      gtk-theme = "Dracula";
      icon-theme = "Adwaita";
      monospace-font-name = "Source Code Pro 12";
      show-battery-percentage = true;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-settings" "gnome-power-panel" "org-gnome-console" "org-gnome-characters" "firefox" "org-gnome-nautilus" "gnome-network-panel" "org-gnome-extensions" "impress" "writer" "org-gnome-tweaks" "code" "teams" "org-gnome-terminal" "io-github-realmazharhussain-gdmsettings" "org-gnome-gedit" "xdg-desktop-portal-gnome" "vlc" "gnome-system-monitor" "org-keepassxc-keepassxc" "com-github-joseexposito-touche" "org-gnome-geary" "mullvad-vpn" "org-qbittorrent-qbittorrent" "tenacity" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-github-joseexposito-touche" = {
      application-id = "com.github.joseexposito.touche.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-system-monitor" = {
      application-id = "gnome-system-monitor.desktop";
    };

    "org/gnome/desktop/notifications/application/impress" = {
      application-id = "impress.desktop";
    };

    "org/gnome/desktop/notifications/application/io-github-realmazharhussain-gdmsettings" = {
      application-id = "io.github.realmazharhussain.GdmSettings.desktop";
    };

    "org/gnome/desktop/notifications/application/mpv" = {
      application-id = "mpv.desktop";
    };

    "org/gnome/desktop/notifications/application/mullvad-vpn" = {
      application-id = "mullvad-vpn.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-eog" = {
      application-id = "org.gnome.eog.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evince" = {
      application-id = "org.gnome.Evince.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-geary" = {
      application-id = "org.gnome.Geary.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-gedit" = {
      application-id = "org.gnome.gedit.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-terminal" = {
      application-id = "org.gnome.Terminal.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-keepassxc-keepassxc" = {
      application-id = "org.keepassxc.KeePassXC.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/teams" = {
      application-id = "teams.desktop";
    };

    "org/gnome/desktop/notifications/application/tenacity" = {
      application-id = "tenacity.desktop";
    };

    "org/gnome/desktop/notifications/application/vlc" = {
      application-id = "vlc.desktop";
    };

    "org/gnome/desktop/notifications/application/writer" = {
      application-id = "writer.desktop";
    };

    "org/gnome/desktop/notifications/application/xdg-desktop-portal-gnome" = {
      application-id = "xdg-desktop-portal-gnome.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = 0.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      speed = 0.0;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///nix/store/gn8hsv7wm49bsqzv3i3sprl6qz03lmxl-wallpaper.jpg";
      primary-color = "#241f31";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = true;
      event-sounds = false;
      theme-name = "freedesktop";
    };

    "org/gnome/desktop/wm/keybindings" = {
      activate-window-menu = [];
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
      move-to-workspace-last = [ "<Control><Super>Right" "<Control><Super>Right" "<Control><Super>Right" ];
      move-to-workspace-left = [ "<Control><Super>Left" ];
      move-to-workspace-right = [ "<Control><Super>Right" ];
      move-to-workspace-up = [ "<Control><Super>Up" "<Super><Shift>Page_Up" ];
      panel-run-dialog = [ "<Control><Super>r" "<Control><Super>r" "<Control><Super>r" ];
      show-desktop = [ "<Super>d" "<Super>d" "<Super>d" ];
      switch-applications = [ "<Alt>Tab" "<Alt>Tab" "<Alt>Tab" ];
      switch-applications-backward = [ "<Shift><Alt>Tab" "<Shift><Alt>Tab" "<Shift><Alt>Tab" ];
      switch-group = [ "<Control>Tab" "<Control>Tab" "<Control>Tab" ];
      switch-group-backward = [ "<Shift><Control>Tab" "<Shift><Control>Tab" "<Shift><Control>Tab" ];
      switch-input-source = [ "<Super>space" "<Super>space" "<Super>space" ];
      switch-input-source-backward = [ "<Shift><Super>space" "<Shift><Super>space" "<Shift><Super>space" ];
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
      switch-to-workspace-down = [ "<Super>Down" "<Super>Page_Down" ];
      switch-to-workspace-last = [ "<Super>Right" ];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Up" ];
      switch-to-workspace-up = [ "<Super>Up" "<Control><Alt>Up" "<Super>Page_Up" ];
      switch-windows = [ "<Super>Tab" ];
      switch-windows-backward = [ "<Shift><Super>Tab" ];
      toggle-fullscreen = [ "<Control>Up" ];
      toggle-maximized = [ "<Control>Down" ];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "icon:minimize,maximize,close";
      titlebar-font = "Cantarell Bold 12";
      workspace-names = [ "1Jobs" "2Arabic" "3Berserk" "4Whatsapp" ];
    };

    "org/gnome/eog/ui" = {
      sidebar = false;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evince/default" = {
      window-ratio = mkTuple [ 1.1666551838400536 2.5444444444444443 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      recreate-folders = true;
      skip-newer = false;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gedit/plugins/filebrowser" = {
      root = "file:///";
      tree-view = true;
      virtual-root = "file:///home/happylime/.config/touchegg";
    };

    "org/gnome/gedit/preferences/editor" = {
      scheme = "cobalt";
      wrap-last-split-mode = "word";
    };

    "org/gnome/gedit/state/history-entry" = {
      replace-with-entry = [ "Control" ];
      search-for-entry = [ "shift" ];
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [ 734 586 ];
      state = 87168;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "resources";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 700 500 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      columns-order = [ 0 1 2 3 4 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 15;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      center-new-windows = false;
      dynamic-workspaces = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Control>Left" ];
      toggle-tiled-right = [ "<Control>Right" ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 830 539 ];
      maximized = false;
    };

    "org/gnome/nm-applet/eap/566c5c8b-fc71-44cb-9e8b-9be676afd703" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/79d29979-1bac-44f4-8318-be033d9878e2" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/f9ea6236-f511-46e9-a84d-f4d313459d0a" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/portal/filechooser/com/obsproject/Studio" = {
      last-folder-path = "/home/happylime/Videos/OBS";
    };

    "org/gnome/portal/filechooser/org/qbittorrent/qBittorrent" = {
      last-folder-path = "/home/happylime/github/qbittheming/qbittorrent";
    };

    "org/gnome/portal/filechooser/org/upscayl/Upscayl" = {
      last-folder-path = "/home/happylime/Pictures/Upscale";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center = [ "<Super>s" ];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/" ];
      help = [];
      home = [ "<Super>e" ];
      logout = [ "<Control><Super>l" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>i";
      command = "sh -c 'sleep 1 && xset dpms force off'";
      name = "xscreen off";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Control><Super>t";
      command = "gedit";
      name = "gedit";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Shift><Control><Alt><Super>m";
      command = "gnome-extensions prefs workspace-indicator@gnome-shell-extensions.gcampax.github.com";
      name = "Workspaces";
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
      binding = "<Control><Alt><Super>i";
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
      command = "sh -c 'if xdotool search --name \"WhatsApp\"; then xdotool windowactivate --sync $(xdotool search --name \"WhatsApp\"); else firefox --new-window https://web.whatsapp.com/; fi\n'";
      name = "Whatsapp";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9" = {
      binding = "<Super>f";
      command = "fsearch";
      name = "fsearch";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
    };

    "org/gnome/shell" = {
      command-history = [ "r" ];
      disable-user-extensions = false;
      disabled-extensions = [ "native-window-placement@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@zhanghai.me" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@ftpix.com" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@ftpix.com" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "just-perfection-desktop@just-perfection" "battery-indicator-icon@Deminder" "color-picker@tuberry" "ssm-gnome@lgiki.net" "power-profile-switcher@eliapasquali.github.io" "mediacontrols@cliffniff.github.com" "gestureImprovements@gestures" "x11gestures@joseexposito.github.io" "vertical-workspaces@G-dH.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.gnome.Terminal.desktop" "firefox.desktop" "code.desktop" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "44.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/battery-indicator-icon" = {
      icon-orientation = "vertical";
      icon-scale = 1.0;
      show-icon-text = 0;
      status-style = "circle";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/misc" = {
      show-osd-monitor-indexes = false;
      supported-active-extensions = [];
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-top-left-6" = {
      ctrl = true;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
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
      hotkey-prefix-text = "";
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      running-indicator-dominant-color = false;
      running-indicator-style = "DOTS";
      show-show-apps-button = false;
      show-trash = false;
      transparency-mode = "FIXED";
      unity-backlit-items = false;
    };

    "org/gnome/shell/extensions/gestureImprovements" = {
      default-overview = true;
      default-session-workspace = true;
      enable-alttab-gesture = false;
      enable-window-manipulation-gesture = false;
      pinch-4-finger-gesture = "NONE";
    };

    "org/gnome/shell/extensions/gsnap" = {
      show-icon = true;
      use-modifier = true;
    };

    "org/gnome/shell/extensions/just-perfection" = {
      accessibility-menu = true;
      activities-button = true;
      app-menu = false;
      app-menu-icon = true;
      app-menu-label = false;
      background-menu = true;
      controls-manager-spacing-size = 0;
      dash = true;
      dash-icon-size = 48;
      double-super-to-appgrid = true;
      gesture = true;
      hot-corner = false;
      osd = true;
      panel = true;
      panel-arrow = true;
      panel-corner-size = 0;
      panel-in-overview = true;
      power-icon = true;
      ripple-box = true;
      search = true;
      show-apps-button = true;
      startup-status = 0;
      theme = true;
      weather = true;
      window-demands-attention-focus = true;
      window-picker-icon = true;
      window-preview-caption = true;
      window-preview-close-button = true;
      workspace = true;
      workspace-background-corner-size = 0;
      workspace-popup = true;
      workspace-switcher-should-show = false;
      workspaces-in-app-grid = true;
    };

    "org/gnome/shell/extensions/mediacontrols" = {
      colored-player-icon = false;
      element-order = [ "icon" "title" "controls" "menu" ];
      extension-position = "right";
      hide-media-notification = false;
      max-widget-width = 150;
      mouse-actions = [ "toggle_info" "toggle_menu" "none" "raise" "none" "none" "none" "none" ];
      prefer-using-seek = false;
      seperator-chars = [ "|" "|" ];
      show-control-icons = true;
      show-player-icon = false;
      show-seek-back = false;
      show-seek-forward = false;
      show-seperators = false;
      show-sources-menu = false;
      show-text = true;
      track-label = [ "track" "-" "artist" ];
    };

    "org/gnome/shell/extensions/power-profile-switcher" = {
      bat = "power-saver";
    };

    "org/gnome/shell/extensions/reorder-workspaces" = {
      keybinding-behavior-outside-of-overview = "disabled";
      move-workspace-next = [ "<Shift>Down" ];
      move-workspace-prev = [ "<Shift>Up" ];
    };

    "org/gnome/shell/extensions/simple-system-monitor" = {
      cpu-usage-text = "C";
      download-speed-text = "";
      extension-position = "right";
      font-weight = 700;
      is-cpu-usage-enable = true;
      is-download-speed-enable = false;
      is-memory-usage-enable = true;
      is-swap-usage-enable = false;
      is-upload-speed-enable = false;
      item-separator = "";
      memory-usage-text = "M";
      refresh-interval = 1;
      show-extra-spaces = false;
      show-percent-sign = false;
      swap-usage-text = "S";
      upload-speed-text = "";
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      activate-empty-key = [];
      activate-previous-key = [];
      enable-activate-workspace-shortcuts = true;
      open-menu = [ "<Super>grave" ];
    };

    "org/gnome/shell/extensions/tactile" = {
      show-tiles = [ "<Alt>t" ];
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Flat-Remix-Miami-Dark-fullPanel";
    };

    "org/gnome/shell/extensions/vertical-workspaces" = {
      app-display-module = true;
      app-favorites-module = true;
      dash-module = true;
      enable-page-shortcuts = false;
      fix-ubuntu-dock = true;
      layout-module = true;
      message-tray-module = true;
      osd-window-module = true;
      overlay-key-module = true;
      panel-module = true;
      profile-name-1 = "GNOME 3";
      profile-name-2 = "GNOME 40+ - Bottom Hot Edge";
      profile-name-3 = "Hot Corner Centric - Top Left Hot Corner";
      profile-name-4 = "Dock Overview - Bottom Hot Edge";
      search-module = true;
      startup-state = 1;
      swipe-tracker-module = true;
      win-attention-handler-module = true;
      window-manager-module = true;
      window-preview-module = true;
      workspace-animation-module = true;
      workspace-module = true;
      workspace-switcher-popup-module = true;
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [];
      open-application-menu = [ "<Control>grave" ];
      screenshot = [];
      screenshot-window = [];
      show-screen-recording-ui = [];
      show-screenshot-ui = [ "<Shift><Super>s" ];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      toggle-message-tray = [ "<Super>n" ];
      toggle-overview = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1697001861;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1697001820;
    };

    "org/gnome/terminal/legacy" = {
      theme-variant = "dark";
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-color = "rgb(0,0,0)";
      cursor-colors-set = false;
      foreground-color = "rgb(0,255,0)";
      use-theme-colors = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.14902 0.137255 ]) ];
      selected-color = mkTuple [ true 0.14902 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 932 746 ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.103333 0.103333 ]) (mkTuple [ 0.74902 0.137255 ]) (mkTuple [ 7.0588e-2 7.0588e-2 ]) (mkTuple [ 7.0e-2 7.0e-2 ]) (mkTuple [ 0.8 0.8 ]) (mkTuple [ 0.937255 0.941176 ]) (mkTuple [ 6.6667e-2 6.6667e-2 ]) (mkTuple [ 9.4118e-2 9.4118e-2 ]) ];
      selected-color = mkTuple [ true 0.603922 ];
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "24h";
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 180;
      sort-column = "modified";
      sort-directories-first = false;
      sort-order = "descending";
      type-format = "category";
      window-position = mkTuple [ 504 236 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "system/proxy" = {
      mode = "auto";
    };

  };
}
