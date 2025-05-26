{ config, pkgs, lib, ... }:

let
  cfg = config;
in
{
  # Home Manager module for Hyprland and companion apps

  home.file = {
    "\.config/hypr/hyprland.conf" = {
      text = ''
# Hyprland core
monitor=,preferred,auto,1

general {
    layout = dwindle
    gaps_in = 8
    gaps_out = 12
    border_size = 2
    active_border_color = #6272a4
    inactive_border_color = #44475a
    background_color = #282a36
}

input {
    kb_layout = us
    follow_mouse = 1
}

# Autostart
exec-once = swaybg -i ~/Pictures/wallpaper.jpg &
exec-once = waybar --config ~/.config/waybar/config --style ~/.config/waybar/style.css &
exec-once = mako &
exec-once = nm-applet &
exec-once = blueman-applet &
exec-once = wofi --config ~/.config/wofi/config &

# Keybindings
bind = SUPER, Return, exec, foot
bind = SUPER, Q, killactive
bind = SUPER, D, exec, wofi --show drun
bind = SUPER, V, togglefloating
bind = SUPER, F, fullscreen
bind = SUPER, L, exec, swaylock-effects --screenshots
bind = SUPER, Shift, E, exec, thunar
bind = SUPER, Shift, R, reload
      '';
    };

    "\.config/waybar/config" = {
      text = ''
{
  "layer": "top",
  "modules-left": ["hyprland/workspaces"],
  "modules-center": ["clock"],
  "modules-right": ["pulseaudio", "network", "battery", "tray"],

  "clock": { "format": "{:%a %d %b %H:%M}" },

  "network": {
    "format-wifi": " {essid} {signalStrength}%",
    "format-ethernet": " {ifname}"
  }
}
      '';
    };

    "\.config/waybar/style.css" = {
      text = ''
/* Dracula theme for Waybar */
window.background { background: #282a36; }
#clock, #network, #pulseaudio, #battery, #tray {
    color: #f8f8f2;
    font-weight: 400;
}
#workspace button {
    background: #44475a;
    color: #bd93f9;
    border-radius: 4px;
    margin: 0 4px;
}
#workspace button.active {
    background: #6272a4;
    color: #f8f8f2;
}
      '';
    };

    "\.config/mako/config" = {
      text = ''
# Dracula-inspired Mako theme
background-color = #44475a
text-color = #f8f8f2
border-color = #6272a4
border-size = 2
padding = 8
default-timeout = 5000
geometry = "300x4l+10+50"
      '';
    };

    "\.config/wofi/config" = {
      text = ''
[wofi]
show-icons = true
drun-show-actions = false
theme = "dracula"

[style]
background = "#282a36"
foreground = "#f8f8f2"
highlight = "#6272a4"
highlight-text = "#f8f8f2"
selection-background = "#44475a"
      '';
    };

    "\.config/foot/foot.ini" = {
      text = ''
[general]
font = "JetBrains Mono 11"
theme = "dracula"

[colors]
foreground = "#f8f8f2"
background = "#282a36"
cursor = "#50fa7b"
selection-foreground = "#282a36"
selection-background = "#bd93f9"
      '';
    };

    "\.local/share/wayland-sessions/hyprland.desktop" = {
      text = ''
[Desktop Entry]
Name=Hyprland
Comment=An intelligent dynamic tiling Wayland compositor
Exec=Hyprland
Type=Application
DesktopNames=Hyprland
Keywords=tiling;wm;wayland
      '';
    };
  };
}
