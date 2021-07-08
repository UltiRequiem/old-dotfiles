alias qq="exit"

alias py='python3.10'
alias pyvenv='python3.10 -m venv env;source env/bin/activate'
alias pyva="python3.10 -m venv env;source env/bin/activate"
alias pyv="source env/bin/activate"

alias v="nvim"
alias vf='nvim $(fzf)'

alias vi="vim"

alias please='sudo $(fc -ln -1)'

alias te='cd $(mktemp -d)'

alias rp='cd ~/disk/Repos; ls'
alias dl="cd ~/Downloads; ls;ranger"

alias f="ranger"
alias l="lsd -l"
alias la="lsd -a"
alias tree="lsd --tree"
alias ls="lsd"

alias reload="exec ${SHELL} -l"
