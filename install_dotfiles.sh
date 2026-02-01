#!/bin/bash

# Exit on error, undefined variables, and pipe failures
set -euo pipefail

# Define paths
DOTFILES_DIR="$HOME/repos/asoderlind/dotfiles"
CONFIG_DIR="$HOME/.config"
ZSH_PLUGINS_DIR="$CONFIG_DIR/zsh/plugins"

# Install Homebrew if not already installed
if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "✓ Homebrew installed"
else
    echo "✓ Homebrew already installed"
fi

# Create config directories
echo "Creating config directories..."
mkdir -p "$CONFIG_DIR"/{nvim,picom,shell,zsh,zshkd,x11,tmux,zathura,fontconfig,lf}
mkdir -p "$HOME/.local/bin/statusbar"
echo "✓ Config directories created"

# Install stow
if ! command -v stow >/dev/null 2>&1; then
    echo "Installing stow..."
    brew install stow
    echo "✓ Stow installed"
else
    echo "✓ Stow already installed"
fi

# Link dotfiles
if [[ -f "$DOTFILES_DIR/src/.local/bin/stowdot" ]]; then
    echo "Linking dotfiles with stow..."
    cd "$DOTFILES_DIR/src"
    chmod +x .local/bin/stowdot
    .local/bin/stowdot
    echo "✓ Dotfiles linked"
else
    echo "Warning: stowdot script not found at $DOTFILES_DIR/src/.local/bin/stowdot"
fi

# ZSH config
if [[ -f "$DOTFILES_DIR/src/.config/shell/profile" ]]; then
    if [[ ! -e "$HOME/.zprofile" ]]; then
        echo "Linking .zprofile..."
        ln -s "$DOTFILES_DIR/src/.config/shell/profile" "$HOME/.zprofile"
        echo "✓ .zprofile linked"
    else
        echo "✓ .zprofile already exists"
    fi
else
    echo "Warning: shell profile not found at $DOTFILES_DIR/src/.config/shell/profile"
fi

# Install ZSH plugins
mkdir -p "$ZSH_PLUGINS_DIR"

if [[ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
    echo "✓ zsh-syntax-highlighting installed"
else
    echo "✓ zsh-syntax-highlighting already installed"
fi

if [[ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGINS_DIR/zsh-autosuggestions"
    echo "✓ zsh-autosuggestions installed"
else
    echo "✓ zsh-autosuggestions already installed"
fi

echo ""
echo "Installation complete! Run 'exec zsh' to start using zsh."

