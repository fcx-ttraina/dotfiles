# Volta (Node.js version manager)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Rust/Cargo
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
```

### `zsh/aliases.zsh`
```bash
# Git aliases
alias gc="git checkout"

# Docker aliases
alias maria="docker exec -it alchemy-mariadb-1 mysql -uroot -p oee"
