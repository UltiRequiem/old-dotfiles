alias q="exit"

alias py='python3.10'
alias pyvenv='python3.10 -m venv env;source env/bin/activate'
alias pyva="python3.10 -m venv env;source env/bin/activate"
alias pyv="source env/bin/activate"

alias v="nvim"
alias vn="nvim -u 'NONE'"
alias vf='nvim $(fiu)'

alias vi="vim"

alias please='sudo $(fc -ln -1)'

alias fiu="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias bf='bat $(fzf)'

alias te='cd $(mktemp -d)'

alias rp='cd ~/disk/Repos; ls'
alias dl="cd ~/Downloads; ls;ranger"


alias gob="go build *.go"
alias gor="go run *.go"

alias f="ranger"
alias l="lsd -l"
alias la="lsd -a"
alias tree="lsd --tree"
alias ls="lsd"

alias reload="exec ${SHELL} -l"
alias pb="pkill brave"
