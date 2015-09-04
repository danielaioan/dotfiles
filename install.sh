#!/usr/bin/env bash

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

echo "$Green Configuring at $Blue$PWD$Red:$Color_Off\n"


echo "$Green Configuring vim links $Color_Off\n"
ln -sfi ~/dotfiles/vim ~/.vim
ln -sfi ~/dotfiles/vim/vimrc ~/.vimrc


echo "$Green Configuring emacs links $Color_Off\n"
ln -sfi ~/dotfiles/emacs ~/.emacs.d
ln -sfi ~/dotfiles/emacs/.emacs ~/.emacs

echo "$Green Configuring bash_profile links $Color_Off\n"
ln -sfi ~/dotfiles/bash/bash_profile ~/.bash_profile
ln -sfi ~/dotfiles/bash/git-completion.bash ~/.git-completion.bash
ln -sfi ~/dotfiles/bash/git-prompt.sh ~/.git-prompt.sh

echo "$Green Reloading bash_profile $Color_Off\n"
source ~/.bash_profile
