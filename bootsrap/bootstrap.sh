#! /bin/bash

#Liquid Prompt
cd ~/.dotfiles
git clone https://github.com/nojhan/liquidprompt.git
source ~/.dotfiles/liquidprompt/liquidprompt

#mutt profile
cp ~/.dotfiles/mutt/muttrc.template ~/.dotfiles/mutt/muttrc

#Sym Links
ln -s ~/.dotfiles/config     ~/.config
ln -s ~/.dotfiles/bashrc     ~/.bashrc
ln -s ~/.ditfiles/mutt       ~/.mutt
ln -s ~/.dotfiles/Xresources ~/.Xresources
ln -s ~/.dotfiles/xinitrc    ~/.xinitrc
