{ pkgs, ... }:

let
  cursorPackage = pkgs.code-cursor;
in {
  programs.vscode = {
    enable = true;
    package = cursorPackage;

    profiles.default = {
      userSettings = {
        # Your Cursor settings.json entries
        "window.zoomLevel"         = 2;
        "workbench.colorTheme"     = "Sweet Dracula";
        "update.mode"              = "none";
        "window.menuBarVisibility" = "visible";
        "window.commandCenter"     = true;
      };

      extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        bierner.markdown-preview-github-styles
        donjayamanne.githistory
        dracula-theme.theme-dracula
        esbenp.prettier-vscode
        jnoortheen.nix-ide
        mhutchie.git-graph
        ms-azuretools.vscode-docker
        ms-python.python
        ms-python.vscode-pylance
        ms-vscode.cpptools
        ritwickdey.liveserver
        saoudrizwan.claude-dev
        yzhang.markdown-all-in-one
      ];
    };
  };
}
