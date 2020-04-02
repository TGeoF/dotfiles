# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# source /usr/share/doc/find-the-command/ftc.bash
# source ~/dotfiles/.promptline.sh

eval "$(thefuck --alias)"
alias ls='ls --color=auto'
alias l='ls'
alias la='ls -lah'
alias ll='ls -lah'
alias c='cd'
alias tmux='tmux -u'
PS1=' \u@\[$(tput sgr0)\]\[\033[0;34m\]\h:\[$(tput sgr0)\]\[\033[0;35m\][\w]:\[$(tput sgr0)\]\[\033[0;37m\] \[$(tput sgr0)\]'

export EDITOR=vim
export VISUAL=vim
export HISTCONTROL=ignoredups
export LANG=de_DE.utf8
export LANGUAGE=de_DE.utf8

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
