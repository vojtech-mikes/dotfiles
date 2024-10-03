#!/bin/bash

echo "Installing brew dependencies for dotfiles and neovim to work properly"

brew update

brew install fzf
brew install fd
brew install ripgrep
brew install black
brew install isort
brew install stylua

echo "Installing p10k"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

echo "Installing NVM"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
