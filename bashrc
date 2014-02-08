#
# ~/.bashrc
#
export EDITOR=vim
export PATH="~/.gem/ruby/2.0.0/bin:~/bin:${PATH}"
export PATH="/opt/glassfish3/glassfish/bin:${PATH}"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Color aliases
[[ -f ~/.bashcoloralias ]] && . ~/.bashcoloralias
PS1='[\w]$ '

# Bashcompletion
source '/home/thall/bash_completion/asadmin-completion.bash'

alias startx='startx &> ~/.xlog'
alias ls='ls --color=auto'
alias diff='colordiff'
alias grep='grep -i --color=auto'
alias mountexternal='mount ~/wd_external'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias please="sudo  !!"

#if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
##startx
#  echo hej &> /dev/null
#fi
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
