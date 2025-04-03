{ config, pkgs, lib, ... }:
{
  programs.bash = {
  enable = true;
  # Bash history configuration
  bashrcExtra = ''
    # Prevent duplicate entries in history
    export HISTCONTROL=erasedups:ignoredups:ignorespace

    # Expand the history size
    export HISTFILESIZE=10000
    export HISTSIZE=10000

    # Add timestamp to history
    export HISTTIMEFORMAT="%F %T "

    # Append to history instead of overwriting
    shopt -s histappend

    # After each command, save and reload history
    export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

    # Ignore case on auto-completion
    bind "set completion-ignore-case on"

    # Show auto-completion list automatically, without double tab
    bind "set show-all-if-ambiguous on"

    # Optional: source system-wide bashrc if needed
    if [ -f /etc/bashrc ]; then
      source /etc/bashrc
    fi
  '';

  # Optional: Personal aliases specific to Home Manager
  shellAliases = {
    # Add personal aliases here that won't conflict with system-wide aliases
    # For example:
    # myalias = "some-specific-command";
  };

  # History control settings
  historyControl = [ "erasedups" "ignoredups" "ignorespace" ];
  historySize = 10000;
  historyFileSize = 10000;
  };
}