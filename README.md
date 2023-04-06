# My dotfiles and config

## ZSH plugins

### ![autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

### ![syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

# Installation steps:

## LSD

1. `wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb` 
2. `sudo dpkg -i lsd_0.23.1_amd64.deb`

## Config

1. `cd ~/.config && mkdir -p nvim picom shell zxhkd x11 tmux zathura zsh fonconfig lf`
2. `mkdir -p ~/.local/bin/statusbar`
3. `sudo apt-get update && sudo apt-get install stow`
4. `cd ~/repos/dotfiles/src && .local/bin/stowdot`

## ZSH config

1. `ln -s ~/repos/dotfiles/src/.config/shell/profile ~/.zprofile`
2. `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting`
3. `git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions`
