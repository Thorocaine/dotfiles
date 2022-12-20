# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/me/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
else
  export ZSH="$HOME/.oh-my-zsh"
  ZSH_THEME="af-magic"
  source $ZSH/oh-my-zsh.sh
fi

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools
export PATH="$PATH:$HOME/.emacs.d/bin"
export PATH="$PATH:$HOME/bin"
export XDG_CONFIG_HOME=$HOME/.config


#enable scroll lock

#ZSH_THEME=robbyrussell
source /usr/share/nvm/init-nvm.sh
colorscript -r

alias dps="docker ps --all --format \"table {{.Names}}\t{{.Status}}\t{{.Ports}}\""









