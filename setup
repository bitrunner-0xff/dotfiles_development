#!/usr/bin/env bash

set -euo pipefail

PACKAGES=(
    fd
    jq
    git
    bat
    fzf
    nvim
    ripgrep
    starship
)

for package in "$PACKAGES[@]"; do
    echo "Installing $package"
    sudo apt install "$package"
done

echo "Setup script finished successfully"

export XDG_CONFIG_HOME="$HOME/.config"
mkdir -p "$XDG_CONFIG_HOME"
PWD=$(pwd)

echo "Linking NeoVim config"
ln -sfn "$PWD/nvim" "$HOME/.config/nvim"

echo "Linking Tmux config and install the package manager"
ln -sfn "$PWD/.tmux.conf" "$HOME/.tmux.conf"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Linking Starship terminal prompt line"
ln -sfn "$PWD/starship.toml" "$HOME/.config/starship.toml"

echo "Linking Zsh dotfile and install plugins"
ln -sfn "$PWD/.zshrc" "$HOME/.zshrc"
git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

source ~/.zshrc
