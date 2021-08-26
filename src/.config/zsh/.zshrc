# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# git aliases
alias ginit="git init ."
alias gass="git add ."
alias gc="git commit -m 'Initial Commit'"

# program aliases
alias v="nvim"

