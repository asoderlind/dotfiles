#!/bin/zsh
# add .local/bin to path
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# default
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

# clean ~
export XDG_CONIFG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

