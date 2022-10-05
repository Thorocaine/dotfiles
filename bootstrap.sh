#!/bin/bash
files="zshrc doom.d"

mkdir -p ~/dotfiles_old

for file in $files; do
    if [[ -f ~/.$file ]]; then
	echo "[ --> ] Moving '~/.$file' to '~/dotfiles_old/$file'"
        mv ~/.$file ~/dotfiles_old/$file
    fi
done

for file in $files; do
    if [[ ! -h ~/.$file ]]; then
        echo "[ <-> ] Linking '~/.dotfiles/$file' to '~/.$file'"
        ln -s ~/.dotfiles/$file ~/.$file
    fi
done

#ln -s ~/.dotfiles/mutt         ~/.mutt
#ln -s ~/.dotfiles/zshrc        ~/.zshrc
#ln -s ~/.dotfiles/config       ~/.config
#ln -s ~/.config/nvim/init.vim  ~/.vimrc
