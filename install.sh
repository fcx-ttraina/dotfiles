#!/bin/bash

set -e  # Exit on error

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🚀 Starting dotfiles installation..."
echo "Dotfiles directory: $DOTFILES_DIR"

# Run setup scripts
source "$DOTFILES_DIR/scripts/setup-zsh.sh"
source "$DOTFILES_DIR/scripts/setup-system.sh"

# Create symlinks
echo "📁 Creating symlinks..."
ln -sf "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# Vagrant-specific setup (only if in Vagrant environment)
if [ -d "/vagrant" ]; then
    echo "🔧 Detected Vagrant environment, running additional setup..."
    source "$DOTFILES_DIR/vagrant/setup-vagrant.sh"
fi

echo "✅ Installation complete! Please restart your shell or run: source ~/.zshrc"
