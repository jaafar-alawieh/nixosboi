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

  # Enhanced Tab Completion
  # Ignore case on auto-completion
  bind "set completion-ignore-case on"

  # Show auto-completion list automatically, without double tab
  bind "set show-all-if-ambiguous on"

  # Enable advanced tab completion
  bind "set show-all-if-unmodified on"

  # Treat hyphens and underscores as equivalent
  bind "set completion-map-case on"

  # Append slash to completed directories
  bind "set mark-directories on"
  bind "set mark-symlinked-directories on"

  # Enhanced globbing
  shopt -s extglob        # Enable extended pattern matching
  shopt -s globstar       # Enable ** for recursive matching

  # Optional: source system-wide bashrc if needed
  if [ -f /etc/bashrc ]; then
    source /etc/bashrc
  fi

  # Enable bash programmable completion features
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
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

  # Add completion for common commands
  _completion_loader() {
    local cmd="$1"
    # Attempt to load completion for the command
    source "/usr/share/bash-completion/completions/$cmd" 2>/dev/null ||
    source "/etc/bash_completion.d/$cmd" 2>/dev/null
  }

  # Custom completion for sudo
  _sudo_completion() {
    local cur prev

    COMPREPLY=()
    cur="''${COMP_WORDS[COMP_CWORD]}"
    prev="''${COMP_WORDS[COMP_CWORD-1]}"

    # If previous word is sudo, complete with commands
    if [[ "$prev" == sudo ]]; then
      # Attempt to complete with commands in PATH
      COMPREPLY=( $(compgen -c -- "$cur") )
    fi
  }

  # Enable advanced completions
  complete -cf sudo  # Complete sudo with commands
  complete -F _sudo_completion sudo

  # Attempt to load more completions for common commands
  _completion_loader git
  _completion_loader docker
  _completion_loader systemctl
  _completion_loader ssh
'';

# Optional: Personal aliases specific to Home Manager
shellAliases = {
  # Add personal aliases here that won't conflict with system-wide aliases
};

# History control settings
historyControl = [ "erasedups" "ignoredups" "ignorespace" ];
historySize = 10000;
historyFileSize = 10000;

};
}
