#!/bin/bash

# update/upgrade
apt update -y && apt upgrade -y

# link gitconfig and gitignore
ln -rsfn .gitconfig $HOME/.gitconfig
ln -rfn gitignore $HOME/.gitignore

# read .env to set author/email
# copy .env.sample to .env and fill with real values
#load vars locally
export $(grep -v '^#' .env | xargs -d '\n')

git config --global user.name $GIT_AUTHOR
git config --global user.email $GIT_AUTHOR_EMAIL

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# docker and docker-compose?

# yarn?

# install zsh
apt install zsh

# configure as default shell
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install dircolors
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output .dircolors

# link .dircolors
ln -rsfn .dircolors $HOME/.dircolors

# install zsh-syntax-highlighting
# clone repo to here
# link zsh-syntax-highlighting to $HOME
apt install zsh-syntax-highlighting

# install zsh-autosuggestions
# clone repo to here
# link zsh-autosuggestiongs to $HOME
sh -c "echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list"
wget -nv https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/xUbuntu_18.04/Release.key -O Release.key
apt-key add - < Release.key
apt update
apt install zsh-autosuggestions
rm Release.key

# link .zshrc
ln -rsfn .zshrc $HOME/.zshrc
