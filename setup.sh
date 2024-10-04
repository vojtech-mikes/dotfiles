#!/bin/bash

echo "Installing brew dependencies for dotfiles and neovim to work properly"

brew update

brew install fzf
brew install fd
brew install ripgrep
brew install black
brew install isort
brew install stylua
brew install stow

echo "Installing starship"

brew install starship

echo "Installing NVM"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
