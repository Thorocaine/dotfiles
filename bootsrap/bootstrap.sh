#! /bin/bash

#Liquid Prompt
cd ~/.dotfiles
git clone https://github.com/nojhan/liquidprompt.git
source ~/.dotfiles/liquidprompt/liquidprompt

#mutt profile
# sudo touch /var/mail/me
# sudo chmod 660 /var/mail/me
# sudo chown `whoami`:mail /var/mail/me 
cp ~/.dotfiles/mutt/template.igs ~/.dotfiles/mutt/account.igs
cp ~/.dotfiles/mutt/template.me ~/.dotfiles/mutt/account.igs

#space-vim
rm -rf ~/.SpaceVim.d

#Sym Links
ln -s ~/.dotfiles/config     ~/.config
ln -s ~/.dotfiles/bashrc     ~/.bashrc
ln -s ~/.dotfiles/mutt       ~/.mutt
<<<<<<< HEAD
ln -s ~/.dotfiles/vim        ~/.vim
ln -s ~/.dotfiles/vimrc      ~/.vimrc
ln -s ~/.dotfiles/space-vim  ~/.space-vim
ln -s ~/.dotfiles/spacevim  ~/.spacevim
=======
ln -s ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d
>>>>>>> 30efaf08b504fa7f758b10cdeef9e39f6da6d474
ln -s ~/.dotfiles/Xresources ~/.Xresources
ln -s ~/.dotfiles/xinitrc    ~/.xinitrc
