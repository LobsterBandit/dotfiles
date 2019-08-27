# dotfiles

> My dotfiles for Ubuntu.

## Installation

- Clone to a directory of your choice:

```bash
git clone https://github.com/LobsterBandit/dotfiles.git
```

- Copy .env.sample and populate with real values:

```bash
cp .env.sample .env
```

- Run `setup.sh`
  - Installs zsh shell, oh-my-zsh and plugins
  - Installs nvm
  - Links dotfiles to home directory

```bash
chmox +x ./setup.sh
./setup.sh
```

## Updates

```bash
git pull
```
