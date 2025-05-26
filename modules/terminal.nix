{ config, pkgs, ... }:

{
  environment.etc."xdg/wezterm/wezterm.lua".text = ''
    local wezterm = require "wezterm"
    local cfg = wezterm.config_builder and wezterm.config_builder() or {}

    cfg.enable_wayland = true
    cfg.font = wezterm.font("OverpassM Nerd Font Mono")
    cfg.font_size = 14.0
    cfg.harfbuzz_features = { "liga=1", "clig=1", "calt=1" }

    cfg.colors = {
      foreground = "#00ff00",
      background = "#282a36",
      cursor_bg = "#00ff00",
      cursor_fg = "#282a36", 
      cursor_border = "#00ff00",
      selection_bg = "#44475a",
      selection_fg = "#ffffff",
      ansi = {
        "#21222c", "#ff5555", "#50fa7b", "#f1fa8c",
        "#bd93f9", "#ff79c6", "#8be9fd", "#f8f8f2"
      },
      brights = {
        "#6272a4", "#ff6e6e", "#69ff94", "#ffffa5",
        "#d6acff", "#ff92df", "#a4ffff", "#ffffff"
      }
    }

    cfg.window_decorations = "RESIZE"

    return cfg
  '';
  }
