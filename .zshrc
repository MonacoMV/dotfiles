autoload -U compinit && compinit -u

#Zsh autocomplete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#Zsh syntax highlight
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#autostart
pokemon-colorscripts -r

#Command History
HISTFILE=~/.zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
bindkey -e

#alias
alias ls='ls -la --color=auto'
alias shutdown='shutdown now'
alias c='clear'

#pacman aliases
alias pacman='sudo pacman'
alias pacmanrepo='sudo pacman -Sy'
alias pacmanre='sudo pacman -R'
alias pacmanupg='sudo pacman -Syu'

#Prompt
PS1="%n (%1~)   "
