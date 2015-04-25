#
# ~/.bashrc
#
export EDITOR=vim
export PATH="~/bin/:${PATH}"

# Java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export _JAVA_AWT_WM_NONREPARENTING=1

PS1='[\w]$ '

alias ls='ls --color=auto'
alias ll='ls -al'
alias diff='colordiff'
alias grep='grep -i --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias less='less -R' # enable color from stdin
