#!/bin/bash

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh

brew install neovim

brew install yarn
yarn install

brew install ripgrep

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

brew install cask
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

git -C ~/ clone https://github.com/benmaia/neovim.git
