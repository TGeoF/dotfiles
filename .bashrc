# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/doc/find-the-command/ftc.bash

alias ls='ls --color=auto'
alias l='ls'
alias c='cd'
alias v='vim'
alias tmux='tmux -u'
PS1=' \u@\[$(tput sgr0)\]\[\033[0;32m\]\h:\[$(tput sgr0)\]\[\033[0;36m\][\w]:\[$(tput sgr0)\]\[\033[0;37m\] \[$(tput sgr0)\]'

export EDITOR=vim
export HISTCONTROL=ignoredups
