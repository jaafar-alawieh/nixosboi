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

    # Jump function and supporting functions from ChrisTitusTech/mybash
    export MARKPATH=$HOME/.marks

    # Jump to a marked directory
    jump() {
        local target
        if [[ $# -eq 0 ]]; then
            # If no argument, list all marks
            ls -l "$MARKPATH" | sed 's/  */ /g' | cut -d' ' -f9- | sed 's/ ->//'
        else
            # Jump to the specified mark
            target=$(readlink -f "$MARKPATH/$1" 2>/dev/null)
            if [[ -d "$target" ]]; then
                cd "$target"
            else
                echo "No such mark: $1"
                return 1
            fi
        fi
    }

    # Mark current directory
    mark() {
        mkdir -p "$MARKPATH"
        ln -sf "$(pwd)" "$MARKPATH/$1"
    }

    # Unmark a directory
    unmark() {
        rm -f "$MARKPATH/$1"
    }

    # Complete marks for jump command
    _jump_completion() {
        local cur marks

        COMPREPLY=()
        cur="''${COMP_WORDS[COMP_CWORD]}"
        marks=$(ls "$MARKPATH")

        COMPREPLY=( $(compgen -W "''${marks}" -- "$cur") )
        return 0
    }

    # Enable tab completion for jump command
    complete -F _jump_completion jump

    # Alias for easy mark and jump commands
    alias j='jump'
    alias m='mark'
    alias um='unmark'
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