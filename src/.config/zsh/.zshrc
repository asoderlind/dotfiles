# Axels zsh config

# Git stuff
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn

# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "  %b "
precmd() {
    vcs_info
}

# Enable colors and change prompt:
autoload -U colors && colors

# Enable substitution in the prompt:
setopt prompt_subst
PS1='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$vcs_info_msg_0_$%b '

# Tell the shell that utf-8 is supported
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #Include hidden files

# History in home:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/.zsh_history

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Use lf to switch directories
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# Keybindings
# 
# Bind ctrl + o to lf
bindkey -s '^o' 'lfcd\n'
# Bind ctrl + f to fuzzy find
bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

# ls after cd
chpwd() ls -a

source ~/.config/zsh/keybindings
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/axel/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
[ -f "/Users/axel/.ghcup/env" ] && . "/Users/axel/.ghcup/env" # ghcup-env