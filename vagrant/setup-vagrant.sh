#!/bin/bash

echo "🔧 Setting up Vagrant-specific configurations..."

# Create docker-compose override symlink
if [ -f "/vagrant/docker-compose.override.yml" ]; then
    ln -sf /vagrant/docker-compose.override.yml "$HOME/alchemy/docker-compose.override.yml"
    echo "✓ Linked docker-compose.override.yml"
fi

# Create databases symlink
if [ -d "/vagrant/databases" ]; then
    ln -sf /vagrant/databases "$HOME/databases"
    echo "✓ Linked databases directory"
fi

# Copy certificates
if [ -d "/vagrant/certs" ]; then
    cp -r /vagrant/certs "$HOME/certs"
    chmod 400 "$HOME/certs"/*
    echo "✓ Copied and secured certificates"
fi
