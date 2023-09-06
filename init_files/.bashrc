#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

source ~/custom_commands/.my_custom_commands.sh

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


