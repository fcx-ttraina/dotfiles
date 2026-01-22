#!/bin/bash

echo "⚙️  Configuring system settings..."

# Increase file watch limit (for yarn watch, etc.)
if ! grep -q "fs.inotify.max_user_watches" /etc/sysctl.conf; then
    echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p
    echo "✓ Increased inotify watch limit"
else
    echo "✓ inotify watch limit already configured"
fi
