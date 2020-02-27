# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/doc/find-the-command/ftc.bash

alias ls='ls --color=auto'
alias l='ls'
alias c='cd'
alias tmux='tmux -u'
PS1=' \[\033[0;32m\]ncV1\[\033[36m\][\W]\[\033[0m\] \\$ \[$(tput sgr0)\]'

export EDITOR=vim
export HISTCONTROL=ignoredups
