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

info(){
  printf "$Green DOTFILES INSTALLER:$Color_Off $Purple%s$Color_Off\n" "$1"
}

log(){
  printf "$Green DOTFILES INSTALLER:$Color_Off %s\n" "$1"
}

DOTFILES_PATH=$(pwd)
HOME=$(cd ~/; pwd)

prep_install(){
  origin=$1
  target=$2
  rm -rf ~/$target.bkp
  mv -f ~/$target ~/$target.bkp
  log "Linking $DOTFILES_PATH/$origin --> $HOME/$target"
  ln -sf $DOTFILES_PATH/$origin $HOME/$target
}

info "Configuring $DOTFILES_PATH to $HOME"

info "Setup VIM"
prep_install "vim" ".vim"
prep_install "vim/vimrc" ".vimrc"

info "Setup EMACS"
prep_install "emacs/emacs.d" ".emacs.d"
prep_install "emacs/emacs" ".emacs"

info "Setup bash_profile"
prep_install "bash" ".bash"
prep_install "bash/profile" ".bash_profile"

info "Reloading bash"
source ~/.bash_profile
