export ZSH="/home/mirai/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH=$PATH:~/bin

ZSH_THEME="robbyrussell"

export PATH=$PATH:~/scripts

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
	git
	zsh-z
        zsh-syntax-highlighting
        zsh-autosuggestions
        command-not-found
)

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
	   export EDITOR='nvim'
   else
	      export EDITOR='vim'
fi

export ARCHFLAGS="-arch x86_64"

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

source ~/bin/aliases.zsh

