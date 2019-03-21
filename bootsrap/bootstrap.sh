#! /bin/bash

#Liquid Prompt
cd ~/.dotfiles
git clone https://github.com/nojhan/liquidprompt.git
source ~/.dotfiles/liquidprompt/liquidprompt

#Sym Links
ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/bashrc ~/.bashrc

