#!/usr/bin/env bash

# Reset
Color_Off="\033[0m"       # Text Reset
# Regular Colors
Black="\033[0;30m"        # Black
Red="\033[0;31m"          # Red
Green="\033[0;32m"        # Green
Yellow="\033[0;33m"       # Yellow
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
White="\033[0;37m"        # White

echo "\n$Green Configuring at $Purple$PWD$Color_Off"

echo "$Green Configuring vim links $Color_Off"
if [ -s ~/.vim ]; then
  rm -rf ~/.vim.bkp
  mv ~/.vim ~/.vim.bkp
fi
ln -sfi ~/dotfiles/vim ~/.vim

if [ -s ~/.vimrc ]; then
  rm -rf ~/.vimrc.bkp
  mv ~/.vimrc ~/.vimrc.bkp
fi
ln -sfi ~/dotfiles/vim/vimrc ~/.vimrc

echo "$Green Configuring emacs links $Color_Off"
if [ -s ~/.emacs.d ]; then
  rm -rf ~/.emacs.d.bkp
  mv ~/.emacs.d ~/.emacs.d.bkp
fi
ln -sfi ~/dotfiles/emacs ~/.emacs.d

if [ -s ~/.emacs ]; then
  rm -rf ~/.emacs.bkp
  mv ~/.emacs ~/.emacs.bkp
fi
ln -sfi ~/dotfiles/emacs/.emacs ~/.emacs

echo "$Green Configuring bash_profile links $Color_Off"
if [ -s ~/.bash_profile ]; then
  rm -rf ~/.bash_profile.bkp
  rm -rf ~/.git-completion.bash.bkp
  rm -rf ~/.git-prompt.sh.bkp
  mv ~/.bash_profile ~/.bash_profile.bkp
  mv ~/.git-completion.bash ~/.git-completion.bash.bkp
  mv ~/.git-prompt.sh ~/.git-prompt.sh.bkp
fi
ln -sfi ~/dotfiles/bash/bash_profile ~/.bash_profile
ln -sfi ~/dotfiles/bash/git-completion.bash ~/.git-completion.bash
ln -sfi ~/dotfiles/bash/git-prompt.sh ~/.git-prompt.sh

echo "$Green Configuring vagrant links using Copy path $Color_Off"
if [ -s ~/Vagrantfile ]; then
  rm -rf ~/Vagrantfile.bkp
  rm -rf ~/.vagrant.bkp
  rm -rf ~/.vagrant.d.bkp
  mv ~/Vagrantfile ~/Vagrantfile.bkp
  mv ~/.vagrant ~/.vagrant.bkp
  mv ~/.vagrant.d ~/.vagrant.d.bkp
fi
ln -sfi ~/Copy/Work/VM/Vagrant/Vagrantfile ~/Vagrantfile
ln -sfi ~/Copy/Work/VM/Vagrant/.vagrant ~/.vagrant
ln -sfi ~/Copy/Work/VM/Vagrant/.vagrant.d ~/.vagrant.d



echo "$Green Reloading bash_profile $Color_Off\n"
source ~/.bash_profile
