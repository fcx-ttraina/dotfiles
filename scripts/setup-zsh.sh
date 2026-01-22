#!/bin/bash

echo "📦 Installing Zsh and Oh-My-Zsh..."

# Install zsh if not already installed
if ! command -v zsh &> /dev/null; then
    sudo apt update
    sudo apt install zsh -y
fi

# Install oh-my-zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Copy custom theme
echo "🎨 Installing custom theme..."
mkdir -p "$HOME/.oh-my-zsh/custom/themes"
cp "$DOTFILES_DIR/zsh/themes/custom-ttr.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/"

