#!/bin/bash
set -ex 

# sync dotfile setups to current dir
DOTFILES="$HOME/dotfiles"

# cli
## nvim
rsync -a --exclude='.git/' --exclude='.DS_Store' ~/.config/nvim/ "$DOTFILES/cli/nvim/"
## zellij
rsync -a ~/.config/zellij/config.kdl "$DOTFILES/cli/zellij/config.kdl"
## yazi
rsync -a --exclude='.git/' --exclude='plugins/' --exclude='.DS_Store' ~/.config/yazi/ "$DOTFILES/cli/yazi/"
## lazygit
rsync -a ~/Library/Application\ Support/lazygit/config.yml "$DOTFILES/cli/lazygit/config.yml"

# system
## karabiner
rsync -a ~/.config/karabiner/karabiner.json "$DOTFILES/system/karabiner/karabiner.json"
## raycast
rsync -a --exclude='.DS_Store' ~/.config/raycast/ "$DOTFILES/system/raycast/"


# brew
brew bundle dump --file "$DOTFILES/Brewfile" --force

echo "✓ synced configs to dotfiles"
