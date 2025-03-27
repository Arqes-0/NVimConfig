# Installation Guide

## Prerequisites
Make sure you have installed the following dependencies before proceeding. If you are using a Debian-based system (you may need to be in the testing version), you can install them using:

```sh
sudo apt update && sudo apt install -y git nodejs npm curl
```

## Install VimPlug
To install VimPlug for the current user, run the following command:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Clone NVim Configuration
To set up the NVim configuration, clone the repository and place it in `~/.config/nvim/`:

```sh
git clone https://github.com/arqes-0/NVimConfig.git ~/.config/nvim/
```

Once installed, you can use VimPlug to manage your Vim plugins efficiently.

## Usage
After installing VimPlug, open Vim and run the following command to install plugins:

```vim
:PlugInstall
```

Happy coding! 🚀
