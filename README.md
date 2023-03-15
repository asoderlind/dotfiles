# my dotfiles

## zsh plugins

### ![autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
`git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions`
### ![syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting`

## Rusty tools

* ![lsd]()

# Usage

In `~/.config` run

```$ mkdir nvim picom shell zxhkd x11 tmux zathura zsh fonconfig lf```

In `~/.local/bin` run

```$ mkdir statusbar```

Make sure you have stow installed, then while standing in `dotfiles/src` run the executable file stowdot:

```$ .local/bin/stowdot```

The files are now symlinked to the corresponding ones in the home directory.
