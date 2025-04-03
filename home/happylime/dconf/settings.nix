# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "gnupg://" ];
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

    "com/github/tenderowl/frog" = {
      active-language = "eng";
      window-height = 482;
      window-width = 583;
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
      last-window-maximised = false;
      last-window-size = mkTuple [ 1155 1366 ];
      theme = "night";
    };

    "org/gnome/Geary" = {
      migrated-config = true;
    };

    "org/gnome/Snapshot" = {
      is-maximized = true;
      show-composition-guidelines = false;
      window-height = 640;
      window-width = 800;
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
      window-maximized = false;
      window-size = mkTuple [ 360 507 ];
      word-size = 64;
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = true;
      window-size = mkTuple [ 646 600 ];
    };

    "org/gnome/cheese" = {
      burst-delay = 1000;
      camera = "Integrated Camera (V4L2)";
      photo-x-resolution = 1280;
      photo-y-resolution = 720;
      video-x-resolution = 1280;
      video-y-resolution = 720;
    };

    "org/gnome/control-center" = {
      last-panel = "online-accounts";
      window-state = mkTuple [ 980 484 false ];
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

    "org/gnome/desktop/datetime" = {
      automatic-timezone = false;
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
      cursor-theme = "Bibata-Modern-Classic";
      document-font-name = "Inter Nerd Font 14";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Inter Nerd Font 14";
      gtk-theme = "Dracula";
      icon-theme = "Adwaita";
      monospace-font-name = "Source Code Pro 14";
      show-battery-percentage = true;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-settings" "gnome-power-panel" "org-gnome-console" "org-gnome-characters" "firefox" "org-gnome-nautilus" "gnome-network-panel" "org-gnome-extensions" "impress" "writer" "org-gnome-tweaks" "code" "teams" "org-gnome-terminal" "io-github-realmazharhussain-gdmsettings" "org-gnome-gedit" "xdg-desktop-portal-gnome" "vlc" "gnome-system-monitor" "org-keepassxc-keepassxc" "com-github-joseexposito-touche" "org-gnome-geary" "mullvad-vpn" "org-qbittorrent-qbittorrent" "tenacity" "spotify" "com-spotify-client" "org-gnome-eog" "android-studio" "gimp" "calc" "org-gnome-shell-extensions-gsconnect-preferences" "org-gnome-shell-extensions-gsconnect" "io-github-cboxdoerfer-fsearch" "steam" "org-upscayl-upscayl" "org-gnome-baobab" "org-gnome-extensions-desktop" "io-gitlab-idevecore-pomodoro" ];
      show-banners = true;
    };

    "org/gnome/desktop/notifications/application/android-studio" = {
      application-id = "android-studio.desktop";
    };

    "org/gnome/desktop/notifications/application/calc" = {
      application-id = "calc.desktop";
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-github-joseexposito-touche" = {
      application-id = "com.github.joseexposito.touche.desktop";
    };

    "org/gnome/desktop/notifications/application/com-spotify-client" = {
      application-id = "com.spotify.Client.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gimp" = {
      application-id = "gimp.desktop";
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

    "org/gnome/desktop/notifications/application/io-github-cboxdoerfer-fsearch" = {
      application-id = "io.github.cboxdoerfer.FSearch.desktop";
    };

    "org/gnome/desktop/notifications/application/io-github-realmazharhussain-gdmsettings" = {
      application-id = "io.github.realmazharhussain.GdmSettings.desktop";
    };

    "org/gnome/desktop/notifications/application/io-gitlab-idevecore-pomodoro" = {
      application-id = "io.gitlab.idevecore.Pomodoro.desktop";
    };

    "org/gnome/desktop/notifications/application/mpv" = {
      application-id = "mpv.desktop";
    };

    "org/gnome/desktop/notifications/application/mullvad-vpn" = {
      application-id = "mullvad-vpn.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-baobab" = {
      application-id = "org.gnome.baobab.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-diskutility" = {
      application-id = "org.gnome.DiskUtility.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-eog" = {
      application-id = "org.gnome.eog.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evince" = {
      application-id = "org.gnome.Evince.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions-desktop" = {
      application-id = "org.gnome.Extensions.desktop.desktop";
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

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions-gsconnect-preferences" = {
      application-id = "org.gnome.Shell.Extensions.GSConnect.Preferences.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions-gsconnect" = {
      application-id = "org.gnome.Shell.Extensions.GSConnect.desktop";
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

    "org/gnome/desktop/notifications/application/org-upscayl-upscayl" = {
      application-id = "org.upscayl.Upscayl.desktop";
    };

    "org/gnome/desktop/notifications/application/spotify" = {
      application-id = "spotify.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
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
      speed = 4.680851063829797e-2;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      speed = 0.30000000000000004;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
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
      switch-to-workspace-last = [];
      switch-to-workspace-left = [ "<Super>Left" ];
      switch-to-workspace-right = [ "<Super>Right" ];
      switch-to-workspace-up = [ "<Super>Up" "<Control><Alt>Up" "<Super>Page_Up" ];
      switch-windows = [ "<Super>Tab" ];
      switch-windows-backward = [ "<Shift><Super>Tab" ];
      toggle-fullscreen = [ "<Control>Up" ];
      toggle-maximized = [ "<Control>Down" ];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "icon:minimize,maximize,close";
      num-workspaces = 5;
      titlebar-font = "Inter Nerd Font Bold 14";
      workspace-names = [ "1 Messaging" "2  Music" "3 Terminal" ];
    };

    "org/gnome/eog/ui" = {
      sidebar = true;
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 768 ];
    };

    "org/gnome/evince/default" = {
      continuous = true;
      dual-page = false;
      dual-page-odd-left = true;
      enable-spellchecking = true;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = true;
      sidebar-page = "thumbnails";
      sidebar-size = 148;
      sizing-mode = "automatic";
      window-ratio = mkTuple [ 1.881391891391415 1.284016086793864 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      window-size = mkTuple [ (-1) (-1) ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 768;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 1318;
    };

    "org/gnome/gedit/plugins/filebrowser" = {
      root = "file:///";
      tree-view = false;
      virtual-root = "file:///run/media/happylime/Crucial%20X9/Games";
    };

    "org/gnome/gedit/preferences/editor" = {
      editor-font = "Source Code Pro 14";
      scheme = "cobalt";
      use-default-font = false;
      wrap-last-split-mode = "word";
    };

    "org/gnome/gedit/state/history-entry" = {
      replace-with-entry = [ "Control" ];
      search-for-entry = [ ".he " " he " "harry" "shift" ];
    };

    "org/gnome/gedit/state/window" = {
      bottom-panel-size = 140;
      side-panel-active-page = "GeditWindowDocumentsPanel";
      side-panel-size = 200;
      size = mkTuple [ 1120 1326 ];
      state = 87168;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 700 500 0 1237 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      columns-order = [ 0 1 2 3 4 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 8;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      center-new-windows = false;
      dynamic-workspaces = false;
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
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "icon-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 830 539 ];
      maximized = false;
    };

    "org/gnome/nm-applet/eap/009f26b4-3ad2-44de-bde3-1d9e34b3efe6" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/2cc7233d-5a7d-47cb-bc8e-1cce06991a28" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/566c5c8b-fc71-44cb-9e8b-9be676afd703" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/79d29979-1bac-44f4-8318-be033d9878e2" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/d13c5a6d-a76a-45fc-8fbd-bdb55408845f" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/efd61321-b73a-4045-91b2-540445eb6bab" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/f9ea6236-f511-46e9-a84d-f4d313459d0a" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      control-center = [ "<Super>s" ];
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom8/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom10/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom11/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom12/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom13/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom14/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom15/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom16/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom17/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom18/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom19/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom20/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom21/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom22/" ];
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

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Shift><Control><Alt><Super>m";
      command = "gnome-extensions prefs workspace-indicator@gnome-shell-extensions.gcampax.github.com";
      name = "Workspaces";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom21" = {
      binding = "<Super>m";
      command = "chromium-browser --app=https://music.youtube.com/";
      name = "Music";
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

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
    };

    "org/gnome/shell" = {
      command-history = [ "r" ];
      disable-user-extensions = false;
      disabled-extensions = [ "native-window-placement@gnome-shell-extensions.gcampax.github.com" "vertical-workspaces@G-dH.github.com" "blur-my-shell@aunetx" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "wsmatrix@martin.zurowietz.de" "gSnap@micahosborne" "custom-hot-corners-extended@G-dH.github.com" "launch-new-instance@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@zhanghai.me" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@ftpix.com" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "caffeine@patapon.info" "clipboard-indicator@tudmotu.com" "grand-theft-focus@zalckos.github.com" "reorder-workspaces@jer.dev" "RemoveAppMenu@Dragon8oy.com" "tactile@lundal.io" "scroll-workspaces@gfxmonk.net" "transparent-top-bar@ftpix.com" "transparent-window-moving@noobsai.github.com" "space-bar@luchrioh" "user-theme@gnome-shell-extensions.gcampax.github.com" "just-perfection-desktop@just-perfection" "battery-indicator-icon@Deminder" "color-picker@tuberry" "ssm-gnome@lgiki.net" "power-profile-switcher@eliapasquali.github.io" "mediacontrols@cliffniff.github.com" "gestureImprovements@gestures" "x11gestures@joseexposito.github.io" "gsconnect@andyholmes.github.io" "panel-workspace-scroll@polymeilex.github.io" "dash-to-dock@micxgx.gmail.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.gnome.Terminal.desktop" "firefox.desktop" "code.desktop" ];
      last-selected-power-profile = "performance";
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

    "org/gnome/shell/extensions/blur-my-shell" = {
      brightness = 1.0;
      color = mkTuple [ 4.3237313628196716e-2 2.053334005177021e-2 0.14666666090488434 0.7233333587646484 ];
      hacks-level = 0;
      noise-amount = 1.0;
      sigma = 60;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = false;
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/misc" = {
      show-osd-monitor-indexes = false;
      supported-active-extensions = [];
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-top-left-0" = {
      barrier-size-h = 50;
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-top-left-1" = {
      action = "prev-workspace-current-mon";
      h-expand = false;
      v-expand = false;
    };

    "org/gnome/shell/extensions/custom-hot-corners-extended/monitor-0-top-left-6" = {
      ctrl = true;
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

    "org/gnome/shell/extensions/gestureImprovements" = {
      default-overview = true;
      default-session-workspace = true;
      enable-alttab-gesture = false;
      enable-window-manipulation-gesture = false;
      pinch-4-finger-gesture = "NONE";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      devices = [ "169790bc_17f4_41a2_a945_cd5549ea8ca1" "f6632e15f1a4e42b" "6208abe4_151b_4471_aab8_ea0704418a6a" ];
      enabled = true;
      id = "0dfac97c-105c-4beb-8396-f267374d4021";
      name = "nixos";
      show-indicators = false;
    };

    "org/gnome/shell/extensions/gsconnect/device/10807139-bf75-499d-98dd-91958271e0b1" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      last-connection = "lan://192.168.1.11:1716";
      name = "cherry";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.sms.request" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      supported-plugins = [ "battery" "clipboard" "findmyphone" "mousepad" "mpris" "notification" "ping" "runcommand" "share" ];
      type = "laptop";
    };

    "org/gnome/shell/extensions/gsconnect/device/169790bc_17f4_41a2_a945_cd5549ea8ca1" = {
      certificate-pem = "-----BEGIN CERTIFICATE-----nMIIBkjCCATmgAwIBAgIBATAKBggqhkjOPQQDBDBTMS0wKwYDVQQDDCQxNjk3OTBinY18xN2Y0XzQxYTJfYTk0NV9jZDU1NDllYThjYTExFDASBgNVBAsMC0tERSBDb25unZWN0MQwwCgYDVQQKDANLREUwHhcNMjIxMTMwMjIwMDAwWhcNMzIxMTMwMjIwMDAwnWjBTMS0wKwYDVQQDDCQxNjk3OTBiY18xN2Y0XzQxYTJfYTk0NV9jZDU1NDllYThjnYTExFDASBgNVBAsMC0tERSBDb25uZWN0MQwwCgYDVQQKDANLREUwWTATBgcqhkjOnPQIBBggqhkjOPQMBBwNCAASV0w+tT6m2wRj/CtISzGXclMk9bqZ4YCiO49bZUIebnqEcTesdrMWviUAujEb00syofJpJ44ZaX6+M2WNtvKXvoMAoGCCqGSM49BAMEA0cAnMEQCIG5xOoTU7FntKL13Rdo+gs1sxHCeWoCqoXjt5skQSRFtAiAvHYXjNfz+Ueuznv9tGUssAUgpunBadaJv842D1JGqOAw==n-----END CERTIFICATE-----n";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.69:1716";
      name = "JX3";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/169790bc_17f4_41a2_a945_cd5549ea8ca1/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/169790bc_17f4_41a2_a945_cd5549ea8ca1/plugin/notification" = {
      applications = ''
        {"Printers":{"iconName":"org.gnome.Settings-printers-symbolic","enabled":true},"Evolution Alarm Notify":{"iconName":"appointment-soon","enabled":true},"Disks":{"iconName":"org.gnome.DiskUtility","enabled":true},"Software":{"iconName":"org.gnome.Software","enabled":true},"Date & Time":{"iconName":"org.gnome.Settings-time-symbolic","enabled":true},"Disk Usage Analyzer":{"iconName":"org.gnome.baobab","enabled":true},"Geary":{"iconName":"org.gnome.Geary","enabled":true},"Power":{"iconName":"org.gnome.Settings-power-symbolic","enabled":true},"Console":{"iconName":"org.gnome.Console","enabled":true},"Color":{"iconName":"org.gnome.Settings-color-symbolic","enabled":true},"Files":{"iconName":"org.gnome.Nautilus","enabled":true},"Clocks":{"iconName":"org.gnome.clocks","enabled":true},"Archive Manager":{"iconName":"org.gnome.FileRoller","enabled":true},"Firefox":{"iconName":"","enabled":true},"Spotify":{"iconName":"","enabled":true},"Mullvad VPN":{"iconName":"","enabled":true},"Disk Space":{"iconName":"drive-harddisk-symbolic","enabled":true},"qBittorrent":{"iconName":"qbittorrent","enabled":true},"Pomodoro":{"iconName":"io.gitlab.idevecore.Pomodoro","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/169790bc_17f4_41a2_a945_cd5549ea8ca1/plugin/share" = {
      receive-directory = "/home/happylime/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/device/6208abe4_151b_4471_aab8_ea0704418a6a" = {
      certificate-pem = "-----BEGIN CERTIFICATE-----nMIIBkjCCATmgAwIBAgIBATAKBggqhkjOPQQDBDBTMS0wKwYDVQQDDCQ2MjA4YWJlnNF8xNTFiXzQ0NzFfYWFiOF9lYTA3MDQ0MThhNmExFDASBgNVBAsMC0tERSBDb25unZWN0MQwwCgYDVQQKDANLREUwHhcNMjMwMzA0MjMwMDAwWhcNMzMwMzA0MjMwMDAwnWjBTMS0wKwYDVQQDDCQ2MjA4YWJlNF8xNTFiXzQ0NzFfYWFiOF9lYTA3MDQ0MThhnNmExFDASBgNVBAsMC0tERSBDb25uZWN0MQwwCgYDVQQKDANLREUwWTATBgcqhkjOnPQIBBggqhkjOPQMBBwNCAASy9oPgWg9h8Gyp9a2LgC+316OeBB+vmiY66UeqXQ4GnsARGeDdlUivD9VaXldKQm1g0aeurc0NjZ6IuCMZX2AACMAoGCCqGSM49BAMEA0cAnMEQCIFh/E7kQkMp2gVk8UVbncoHILYwyjwOyqwSNFi2UQsZoAiATTp7BlM/wtqKQnXcZZ24pf9riFhu6YLizf5TB9wGHV/g==n-----END CERTIFICATE-----n";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.97:1716";
      name = "jx5";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "tablet";
    };

    "org/gnome/shell/extensions/gsconnect/device/6208abe4_151b_4471_aab8_ea0704418a6a/plugin/notification" = {
      applications = ''
        {"Firefox":{"iconName":"","enabled":true},"Power":{"iconName":"","enabled":true},"Disk Space":{"iconName":"drive-harddisk-symbolic","enabled":true},"Mullvad VPN":{"iconName":"","enabled":true},"qBittorrent":{"iconName":"qbittorrent","enabled":true},"Pomodoro":{"iconName":"io.gitlab.idevecore.Pomodoro","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/9c6350bacfb7ec8a" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.89:1716";
      name = "2311DRK48G";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "tablet";
    };

    "org/gnome/shell/extensions/gsconnect/device/c20304e6-29e5-4b41-aa1d-644a436730ca" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      last-connection = "lan://192.168.1.17:1716";
      name = "sadek";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.runcommand.request" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.sms.request" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      supported-plugins = [ "battery" "clipboard" "findmyphone" "mousepad" "mpris" "notification" "photo" "ping" "runcommand" "share" ];
      type = "laptop";
    };

    "org/gnome/shell/extensions/gsconnect/device/c20304e6-29e5-4b41-aa1d-644a436730ca/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/c20304e6-29e5-4b41-aa1d-644a436730ca/plugin/notification" = {
      applications = ''
        {"Printers":{"iconName":"org.gnome.Settings-printers-symbolic","enabled":true},"Evolution Alarm Notify":{"iconName":"appointment-soon","enabled":true},"Disks":{"iconName":"org.gnome.DiskUtility","enabled":true},"Software":{"iconName":"org.gnome.Software","enabled":true},"Date & Time":{"iconName":"org.gnome.Settings-time-symbolic","enabled":true},"Disk Usage Analyzer":{"iconName":"org.gnome.baobab","enabled":true},"Geary":{"iconName":"org.gnome.Geary","enabled":true},"Power":{"iconName":"org.gnome.Settings-power-symbolic","enabled":true},"Console":{"iconName":"org.gnome.Console","enabled":true},"Color":{"iconName":"org.gnome.Settings-color-symbolic","enabled":true},"Files":{"iconName":"org.gnome.Nautilus","enabled":true},"Clocks":{"iconName":"org.gnome.clocks","enabled":true},"Archive Manager":{"iconName":"org.gnome.FileRoller","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/c20304e6-29e5-4b41-aa1d-644a436730ca/plugin/share" = {
      receive-directory = "/home/happylime/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/device/dc8db1bb3ec6e7ae" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.1.8:1716";
      name = "Infinix X672";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/f6632e15f1a4e42b" = {
      certificate-pem = "-----BEGIN CERTIFICATE-----nMIIC9zCCAd+gAwIBAgIBATANBgkqhkiG9w0BAQsFADA/MRkwFwYDVQQDDBBmNjYznMmUxNWYxYTRlNDJiMRQwEgYDVQQLDAtLREUgQ29ubmVjdDEMMAoGA1UECgwDS0RFnMB4XDTIwMTEyOTIyMDAwMFoXDTMwMTEyOTIyMDAwMFowPzEZMBcGA1UEAwwQZjY2nMzJlMTVmMWE0ZTQyYjEUMBIGA1UECwwLS0RFIENvbm5lY3QxDDAKBgNVBAoMA0tEnRTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK3Oz9nWAQfMKS2LY+dlneSHhyMIZye6ZH4B4NEICxTIG6NAN0HruDSXvTxUqKACDcFNgfLPUWkPkm1ZpCpQjn3eMN5SikOzNeZrnCNRWwwDCa4k6814F30AmXwfcmICGPp2z/6A+yJ7dTKTjclAW7n+zDtwMnTyr5tNxmg3mMxmFDIBRLf9QrYAVdWuvwulRNmYAJdC4HYH+cpZMHDfKLknngqguC3ddxzuAc3NvZRytH4ty8xLa/43BqOZaHzG4rTFhsOU+qmb9vrlx6dfHLEHnkxnPSYocGVMxOPclKT3xm5oEXR9xCD+ZD83Q8WMKdT2lwjUK6ZH0E5UfVTdPMBdPnms8CAwEAATANBgkqhkiG9w0BAQsFAAOCAQEANmi3PmfuFcRitkMuvy2tjP5M+Ns9n360Jyp1aAfo6Vm9zex7GJfvv7ITl2l8sKRvE1TApBw0CUOaFhynznmvY0SJBmqdvnPw7RxkB1fcUWvOfNcDy+71W7b3k/txUwZA6GmFtD8TQpdgh3D+qZIJZrBEbAuUiFnH9BJwlRWof0gaMDx6PK4EaTsv/8fCnSITW5w9E8FkGsyLzMIqPj34MR+VqL4K03XnfBrappDoo8VeJOHGw4glh4fSFu+ITWnfIcXiNnmavhHQJY3d9AlE+21MusTpiUW6nIm1dk42f1C8UOdUhEp+riYFglZZvePhUUgk0aWqWI2QRbxHHwl+jon12PA==n-----END CERTIFICATE-----n";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.16.103:1717";
      name = "M2102J20SG";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/f6632e15f1a4e42b/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/f6632e15f1a4e42b/plugin/notification" = {
      applications = ''
        {"Printers":{"iconName":"org.gnome.Settings-printers-symbolic","enabled":true},"Evolution Alarm Notify":{"iconName":"appointment-soon","enabled":true},"Disks":{"iconName":"org.gnome.DiskUtility","enabled":true},"Software":{"iconName":"org.gnome.Software","enabled":true},"Date & Time":{"iconName":"org.gnome.Settings-time-symbolic","enabled":true},"Disk Usage Analyzer":{"iconName":"org.gnome.baobab","enabled":true},"Geary":{"iconName":"org.gnome.Geary","enabled":true},"Power":{"iconName":"org.gnome.Settings-power-symbolic","enabled":true},"Console":{"iconName":"org.gnome.Console","enabled":true},"Color":{"iconName":"org.gnome.Settings-color-symbolic","enabled":true},"Files":{"iconName":"org.gnome.Nautilus","enabled":true},"Clocks":{"iconName":"org.gnome.clocks","enabled":true},"Archive Manager":{"iconName":"org.gnome.FileRoller","enabled":true},"Spotify":{"iconName":"","enabled":true},"Firefox":{"iconName":"","enabled":true},"Mullvad VPN":{"iconName":"","enabled":true},"Disk Space":{"iconName":"drive-harddisk-symbolic","enabled":true},"qBittorrent":{"iconName":"qbittorrent","enabled":true},"Pomodoro":{"iconName":"io.gitlab.idevecore.Pomodoro","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/f6632e15f1a4e42b/plugin/share" = {
      receive-directory = "/home/happylime/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = false;
      window-size = mkTuple [ 845 476 ];
    };

    "org/gnome/shell/extensions/gsnap" = {
      show-icon = true;
      use-modifier = false;
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
      overlay-key = true;
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
      workspace-switcher-should-show = true;
      workspaces-in-app-grid = true;
    };

    "org/gnome/shell/extensions/mediacontrols" = {
      colored-player-icon = false;
      element-order = [ "icon" "title" "controls" "menu" ];
      extension-position = "Right";
      fixed-label-width = true;
      hide-media-notification = false;
      label-width = mkUint32 160;
      max-widget-width = 150;
      mouse-action-left = "SHOW_POPUP_MENU";
      mouse-action-middle = "NONE";
      mouse-action-right = "OPEN_PREFERENCES";
      mouse-action-scroll-down = "NONE";
      mouse-action-scroll-up = "NONE";
      mouse-actions = [ "toggle_info" "toggle_menu" "none" "raise" "none" "none" "none" "none" ];
      prefer-using-seek = false;
      seperator-chars = [ "|" "|" ];
      show-control-icons = true;
      show-control-icons-seek-backward = false;
      show-control-icons-seek-forward = false;
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
      move-workspace-next = [ "<Shift>Right" ];
      move-workspace-prev = [ "<Shift>Left" ];
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

    "org/gnome/shell/extensions/space-bar/appearance" = {
      application-styles = ".space-bar {n  -natural-hpadding: 12px;n}nn.space-bar-workspace-label.active {n  margin: 0 4px;n  background-color: rgba(255,255,255,0.3);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive {n  margin: 0 4px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive.empty {n  margin: 0 4px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,0.5);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}";
    };

    "org/gnome/shell/extensions/space-bar/behavior" = {
      smart-workspace-names = false;
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      activate-empty-key = [];
      activate-previous-key = [];
      enable-activate-workspace-shortcuts = false;
      open-menu = [ "<Super>grave" ];
    };

    "org/gnome/shell/extensions/space-bar/state" = {
      version = 32;
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

    "org/gnome/shell/extensions/wsmatrix" = {
      enable-popup-workspace-hover = false;
      num-columns = 3;
      num-rows = 3;
      popup-timeout = 800;
      show-workspace-names = true;
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

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1743679080;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1737637943;
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
      custom-colors = [ (mkTuple [ 4.3237313628196716e-2 2.053334005177021e-2 0.14666666090488434 0.7233333587646484 ]) (mkTuple [ 0.14162133634090424 2.053334005177021e-2 0.14666666090488434 0.7233333587646484 ]) (mkTuple [ 0.14162133634090424 2.0533330738544464e-2 0.14666666090488434 0.7233333587646484 ]) (mkTuple [ 0.34967201948165894 2.1800002083182335e-2 0.3633333444595337 0.7233333587646484 ]) (mkTuple [ 0.0 0.0 0.0 0.0 ]) (mkTuple [ 0.13725490868091583 0.12941177189350128 0.21176470816135406 1.0 ]) (mkTuple [ 0.16470588743686676 0.15294118225574493 0.24705882370471954 1.0 ]) ];
      selected-color = mkTuple [ true 4.3237313628196716e-2 2.053334005177021e-2 0.14666666090488434 0.7233333587646484 ];
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
      sidebar-width = 184;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 13 11 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "system/proxy" = {
      mode = "auto";
    };

  };
}
