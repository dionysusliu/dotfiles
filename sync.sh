#!/bin/bash

# sync dotfile setups to current dir
DOTFILES="$HOME/dotfiles"

cp ~/.config/zellij/config.kdl "$DOTFILES/zellij/config.kdl"

echo "✓ synced configs to dotfiles"
