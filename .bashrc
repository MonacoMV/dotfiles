#
# ~/.bashrc
#
  
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
 
PS1='\W $ '
#autorun
pokemon-colorscripts -r
 
#aliases
alias ls='ls -la --color'
alias shutdown='shutdown now'
alias c='clear'
alias pacman='sudo pacman'
alias clock='tty-clock'
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

#scripts
export PATH=$PATH:~/bin
