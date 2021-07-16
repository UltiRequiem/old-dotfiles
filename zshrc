export ZSH="/home/mirai/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH=$PATH:~/bin
he

ZSH_THEME="robbyrussell"

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
        zsh-better-npm-completion
)

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
	   export EDITOR='nvim'
else
    export EDITOR='vim'
fi

export EDITOR='nvim'

export ARCHFLAGS="-arch x86_64"

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$(go env GOPATH)

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

source ~/bin/aliases.zsh

eval $(thefuck --alias)

export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
source /usr/share/fzf/completion.zsh && source /usr/share/fzf/key-bindings.zsh
