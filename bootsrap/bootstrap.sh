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
ln -s ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d
ln -s ~/.dotfiles/Xresources ~/.Xresources
ln -s ~/.dotfiles/xinitrc    ~/.xinitrc
