#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/dotfiles"

FILES=(
  ".vimrc"
  ".gitconfig"
)

for file in "${FILES[@]}"; do
    src="$DOTFILES_DIR/$file"
    dst="$HOME/$file"

    if [ ! -e "$src" ]; then
      echo "Warning: source file $src does not exist. Skipping."
      continue
    fi

    echo "Linking $dst → $src"
    ln -sf "$src" "$dst"
done

