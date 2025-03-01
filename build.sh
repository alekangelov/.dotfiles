#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# symlink function
create_symlink() {
  local original="$1"
  local link="$2"

  # check if original exists, it may be a directory
  if [ ! -e "$original" ]; then
    echo "Original file/directory does not exist: $original"
    return
  fi

  # check if destination exists
  # if it does, remove it
  if [ -e "$link" ]; then
    echo "Removing existing $link"
    rm -rf "$link"
  fi

  # createt the symlink
  ln -s "$original" "$link"
}

# Create symlinks for .zshrc, .tmux.conf, .config/alacritty, .config/nvim
declare -A symlnks=(
  ["$HOME/.zshrc"]="$DOTFILES_DIR/.zshrc"
  ["$HOME/.tmux.conf"]="$DOTFILES_DIR/.tmux.conf"
  ["$HOME/.config/alacritty"]="$DOTFILES_DIR/alacritty"
  ["$HOME/.config/nvim"]="$DOTFILES_DIR/nvim"
)

for target in "${!symlnks[@]}"; do
  create_symlink "${symlnks[$target]}" "$target"
done
