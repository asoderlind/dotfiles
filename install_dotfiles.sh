#!/bin/bash

# Install Zsh if not already installed
if ! command -v zsh >/dev/null 2>&1; then
	    sudo apt update
	        sudo apt install zsh -y
		    chsh -s $(which zsh)
fi

# Config
cd ~/.config
mkdir -p nvim picom shell zsh zshkd x11 tmux zathura fontconfig lf
mkdir -p ~/.local/bin/statusbar

# Install stow
sudo apt-get update
sudo apt-get install stow -y

# Link dotfiles
cd ~/repos/dotfiles/src
.local/bin/stowdot

# ZSH config
ln -s ~/repos/dotfiles/src/.config/shell/profile ~/.zprofile

# Install ZSH plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions

# Switch to Zsh for the current session
exec zsh

