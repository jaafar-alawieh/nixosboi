{ pkgs }:

pkgs.writeShellScriptBin "j" (builtins.readFile ./jump_script.sh)
