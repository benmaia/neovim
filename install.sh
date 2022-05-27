#!/bin/bash

# Sudo Update && Upgrade
sudo apt update && sudo apt upgrade -y

# Install basic needs
[ -f "/usr/bin/git" ] || sudo apt install git -y
[ -f "/usr/bin/curl" ] || sudo apt install curl -y

# Install most recent version NVIM
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update
[ -f "/usr/bin/nvim" ] || sudo apt install neovim -y

# Install most recent version NodeJS && Yank
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
if [ -f "/usr/bin/npm" ]
then
	:
else
	sudo apt -y install nodejs
	sudo apt -y install gcc g++ make
	curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	sudo apt update && sudo apt install yarn
	yarn install
fi

# Install pip
[ -f "/usr/bin/pip" ] || sudo apt-get -y install python3-pip

# Install ripgrep
sudo apt install ripgrep -y

# Install Plugin Manager
[ -f "/home/$(whoami)/.vim/autoload/plug.vim" ] || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Norminette
if [ -f "/home/$(whoami)/.local/bin/norminette" ]
then
	:
else
	sudo apt-get install -y python3-launchpadlib
	python3 -m pip install flake8
	python3 -m pip install --upgrade pip setuptools
	python3 -m pip install norminette
fi

# Install Nerd Font
[ -f "~/.local/share/fonts/Droid Sans Mono for Powerline Nerd Font Complete.otf" ] || cd ~/.local/share/fonts || curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# Transfering my nvim config
[ -d "/home/$(whoami)/.config" ] || mkdir .config
cp -r /home/$(whoami)/dotfiles_config/nvim /home/$(whoami)/.config

# Install Plugins
nvim +PlugInstall +qall
nvim -C ':TSInstall c' \
	-c ':TSInstall cpp' \
	-c ':TSInstall python' \
	-c 'qa!'
