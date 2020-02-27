# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/clement/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U colors && colors
PS1="%B%{$fg[red]%}[ %{$fg[red]%}%~%{$fg[red]%} ] %{$reset_color%}$%b "

# Load aliases
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"

zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

export KEYTIMEOUT=1

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
