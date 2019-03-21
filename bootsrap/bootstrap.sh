#! /bin/bash

#Liquid Prompt
cd ~/.dotfiles
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
ln -s ~/.dotfiles/liquidprompt/liquidpromptrc-dist ./config/liquidpromptrc

#Sym Links
ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/bashrc ~/.bashrc

