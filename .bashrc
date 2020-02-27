# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/doc/find-the-command/ftc.bash

alias ls='ls --color=auto'
alias l='ls'
alias c='cd'
alias tmux='tmux -u'
PS1=' \[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'

export EDITOR=vim
export HISTCONTROL=ignoredups
