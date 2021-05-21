export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.config/oh-my-zsh"

export PATH=$PATH:~/scripts

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

_Z_DATA="$HOME/.cache/z"

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
else
   export EDITOR='vim'
fi

export ARCHFLAGS="-arch x86_64"
