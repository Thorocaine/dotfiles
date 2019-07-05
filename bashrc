#
# ~/.bashrc
#

LS_COLORS='ow=01;36;40'
export LS_COLORS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color'
# PS1='[\u@\h \W]\$ '
source ~/.dotfiles/liquidprompt/liquidprompt

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
