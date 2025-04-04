{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    
    # Just the bare minimum settings
    historyControl = [ "erasedups" "ignoredups" "ignorespace" ];
    historySize = 10000;
    historyFileSize = 10000;

    # Create the .bash_custom file but don't load it yet
    initExtra = ''
      # Load custom configuration only in interactive shells
      if [[ $- == *i* ]] && [[ -f "$HOME/.bash_custom" ]]; then
        source "$HOME/.bash_custom"
      fi
    '';
  };

  # Create a separate file with all your customizations
  home.file.".bash_custom" = {
    text = ''
      #!/bin/bash
      # This file contains custom bash configuration and is only loaded in interactive shells

      # History settings
      export HISTCONTROL=erasedups:ignoredups:ignorespace
      export HISTFILESIZE=10000
      export HISTSIZE=10000
      export HISTTIMEFORMAT="%F %T "
      
      # Basic shell options
      shopt -s histappend
      shopt -s extglob
      shopt -s globstar
      
      # After each command, save and reload history
      PROMPT_COMMAND="history -a; history -n; ''${PROMPT_COMMAND:-:}"
      
      # Marks directory for jump function
      export MARKPATH="$HOME/.marks"

      # Jump function and supporting functions
      jump() {
        local target
        if [[ $# -eq 0 ]]; then
          # If no argument, list all marks
          ls -l "$MARKPATH" 2>/dev/null | sed 's/  */ /g' | cut -d' ' -f9- | sed 's/ ->//' || echo "No marks yet"
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

      # Alias for easy mark and jump commands
      alias j='jump'
      alias m='mark'
      alias um='unmark'

      # Enhanced Tab Completion
      if command -v bind &>/dev/null; then
        # Ignore case on auto-completion
        bind "set completion-ignore-case on" 2>/dev/null || true
        
        # Show auto-completion list automatically, without double tab
        bind "set show-all-if-ambiguous on" 2>/dev/null || true
        
        # Enable advanced tab completion
        bind "set show-all-if-unmodified on" 2>/dev/null || true
        
        # Treat hyphens and underscores as equivalent
        bind "set completion-map-case on" 2>/dev/null || true
        
        # Append slash to completed directories
        bind "set mark-directories on" 2>/dev/null || true
        bind "set mark-symlinked-directories on" 2>/dev/null || true
      fi

      # Enable bash programmable completion features
      if [ -f /usr/share/bash-completion/bash_completion ]; then
        source /usr/share/bash-completion/bash_completion
      elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion
      fi

      # Complete marks for jump command
      _jump_completion() {
        local cur marks
        COMPREPLY=()
        cur="''${COMP_WORDS[COMP_CWORD]}"
        marks=$(ls "$MARKPATH" 2>/dev/null || echo "")
        COMPREPLY=( $(compgen -W "''${marks}" -- "$cur") )
        return 0
      }

      # Enable tab completion for jump command
      if command -v complete &>/dev/null; then
        complete -F _jump_completion jump 2>/dev/null || true

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
        complete -cf sudo 2>/dev/null || true
        complete -F _sudo_completion sudo 2>/dev/null || true
      fi
    '';
    executable = true;
  };
}