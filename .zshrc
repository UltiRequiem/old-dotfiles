if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx &
	exit
fi

export ZSH="/home/zero/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH=$PATH:~/bin
he

HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

export LANG=en_US.UTF-8

export EDITOR='nvim'

export ARCHFLAGS="-arch x86_64"

source $ZSH/oh-my-zsh.sh

source ~/bin/aliases

# FZF Stuff
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
source /usr/share/fzf/completion.zsh && source /usr/share/fzf/key-bindings.zsh
