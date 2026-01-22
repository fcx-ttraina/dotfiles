# My Dotfiles

Personal development environment configuration.

## Quick Start

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## What's Included

- **Zsh** with Oh-My-Zsh
- Custom theme with git integration and timestamp
- Useful aliases and key bindings
- PATH configuration for Volta and Cargo
- System optimizations

## Structure

- `zsh/` - Zsh configuration files
- `scripts/` - Installation scripts
- `vagrant/` - Vagrant-specific setup (optional)

## Customization

Edit the following files to customize:
- `zsh/aliases.zsh` - Add your aliases
- `zsh/path.zsh` - Modify PATH
- `zsh/bindings.zsh` - Change key bindings

## Manual Steps

After installation, you may need to:
1. Set Zsh as default shell: `chsh -s $(which zsh)`
2. Restart your terminal

## Usage

```bash
# Initial setup
git clone <your-repo> ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh

# After making changes to dotfiles
cd ~/dotfiles
git pull
source ~/.zshrc  # Or restart terminal
```

