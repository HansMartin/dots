#    _           _
#   | |_ ___ ___| |_ ___ ___
#   | . | .'|_ -|   |  _|  _|
#   |___|__,|___|_|_|_| |___|
#

# If not running interactively, don't do anything
    [[ $- != *i* ]] && return


shopt -s autocd # cd into directory only by dir name

stty -ixon # Disable ctrl-s and ctrl-q.

PS1='[\u@\h \W]\$ '


# PATH and other variable
export PATH=$HOME/.scripts/misc:$HOME/.scripts/tools:$HOME/documents/bin:$PATH
export GOPATH=$HOME/documents/golang

# bash aliases
if [ -f ~/.bash_aliases ]; then
 source $HOME/.bash_aliases
fi

# Base16 Shell
#if [ -f $HOME/.base16_theme ]; then
#   export BASE16_SHELL_SET_BACKGROUND=false
#    eval $HOME/.base16_theme
#fi

# vim-mode for bash
#set -o vi

# fzf - fuzzy file finder completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# PS1 string
source $HOME/.scripts/ps1.sh

# defaults
export EDITOR=vim
export BROWSER=firefox

# fix broken st Del key
printf '\033[?1h\033=' >/dev/tty
alias dots='/usr/bin/git --git-dir=$HOME/documents/dots/.git --work-tree=$HOME'
