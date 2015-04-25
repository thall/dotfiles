#
# ~/.bashrc
#
export EDITOR=vim
export PATH="/opt/ums:${PATH}"
export PATH="~/bin/:${PATH}"

# Java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Color aliases
[[ -f ~/.bashcoloralias ]] && . ~/.bashcoloralias
PS1='[\w]$ '

alias startx='startx &> ~/.xlog'
alias ls='ls --color=auto'
alias ll='ls -al'
alias diff='colordiff'
alias grep='grep -i --color=auto'
alias mountexternal='mount ~/wd_external'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias less='less -R' # enable color from stdin

alias up='cd ${pwd}/..'

#if [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then
##startx
#  echo hej &> /dev/null
#fi
[[ -z $DISPLAY ]] && exec startx -- -logverbose 9
touch /home/thall/bashrc.txt
