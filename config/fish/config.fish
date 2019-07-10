alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias la='ls -la'
alias l="ls -laFGgohq"
alias fsh='vim ~/.config/fish/'
alias vrc='vim ~/.vim/settings/'
alias tmc='vim ~/.tmux.conf'
alias gco='git checkout'
alias gs='git status'
alias ga='git add'
alias t='todolist'
alias nats="docker run -d -p 4222:4222 -p 6222:6222 -p 8222:8222 nats:latest"
alias vim=nvim
alias fuck_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias fm='fzf | xargs rm -rfi'
alias fc="cd (fd -t d | fzf --preview 'tree -aCt {}' )"
status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (nodenv init -|psub)

set fish_user_paths (npm bin)
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -Ux FZF_DEFAULT_COMMAND "fd --hidden --type f"
set -Ux TERM "xterm-256color"
export NNN_TMPFILE="/tmp/nnn"
set -Ux EDITOR "vim"
export NNN_USE_EDITOR=1
fish_user_key_bindings
fish_vi_key_bindings

function fco -d "Fuzzy-find and checkout a branch"
  git branch --all | grep -v HEAD | string trim | fzf | read -l result; and git checkout "$result"
end
