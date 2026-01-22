# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="custom-ttr"

# Oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Source all profile.d scripts
for profile in /etc/profile.d/*; do
    [ -r "$profile" ] && source "$profile"
done

# Load custom configurations
DOTFILES_ZSH="$(dirname $(readlink -f ~/.zshrc))"
[ -f "$DOTFILES_ZSH/path.zsh" ] && source "$DOTFILES_ZSH/path.zsh"
[ -f "$DOTFILES_ZSH/aliases.zsh" ] && source "$DOTFILES_ZSH/aliases.zsh"
[ -f "$DOTFILES_ZSH/bindings.zsh" ] && source "$DOTFILES_ZSH/bindings.zsh"
