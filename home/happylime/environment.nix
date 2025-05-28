{
  home.sessionVariables = {
    # core utilities
    BROWSER                = "firefox";
    EDITOR                 = "nvim";
    TERMINAL               = "kitty";

    # Wayland graphics tweaks
    NIXOS_OZONE_WL         = "1";
    MOZ_ENABLE_WAYLAND     = "1";
    SDL_VIDEODRIVER        = "wayland";
    QT_QPA_PLATFORM        = "wayland-egl";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

    # Wayland compositor devices & options
    WLR_DRM_DEVICES        = "/dev/dri/card0";
    WLR_NO_HARDWARE_CURSORS = "1";
    CLUTTER_BACKEND        = "wayland";
    WLR_RENDERER           = "vulkan";

    # Desktop/session identity
    XDG_CURRENT_DESKTOP    = "Hyprland";
    XDG_SESSION_DESKTOP    = "Hyprland";
    XDG_SESSION_TYPE       = "wayland";

    # Portal integration
    GTK_USE_PORTAL         = "1";
    NIXOS_XDG_OPEN_USE_PORTAL = "1";

    # XDG base dirs
    XDG_CACHE_HOME = "\${HOME}/.cache";
    XDG_CONFIG_HOME = "\${HOME}/.config";
    #XDG_BIN_HOME = "\${HOME}/.local/bin";
    XDG_DATA_HOME = "\${HOME}/.local/share";

  };
}