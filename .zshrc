###NAVIGATION###
alias nf='mkdir'
alias snf='sudo mkdir'
alias l='ls --color=auto -A'
alias yu='mv'
alias syu='sudo mv'
alias yy='cp -r'
alias syy='sudo cp -r'
alias D='trash -f'
alias sD='sudo trash -f'
alias tt='sudo trash-empty'
alias tr='restore-trash'
alias tl='trash-list'
alias d='clear'
alias e='cd'
alias q='cd ..'
alias ew='e /home/ridho/.wine'
alias ea='e /home/ridho/Videos/Anime && l'
alias ef='e /home/ridho/Videos/film && l'
alias ed='e /home/ridho/Downloads && l'
alias emd='e /home/ridho/Private/megasync_download_folder && l'
alias ep='e /home/ridho/Private && l'
alias epp='e /home/ridho/Private/Program && l'
alias ec='e /home/ridho/.config && l'
alias qq='e ~'
alias jj='wine'
alias vv='xplayer'
alias fj='sh'
alias fff='ranger'
alias qqq='e /'
alias xxx='shutdown now'
alias x-iso-='sudo dd=4M if='
alias x-dev-='of='



### APT ###
alias fuck='cat /home/ridho/alias-help/aliasing.txt'
alias fuckup='sudo apt update'
alias fuckab='sudo apt show'
alias fuckl='sudo apt list'
alias fuckin='sudo apt install'
alias fuckr='sudo apt reinstall'
alias fuckd='sudo apt download'
alias fuckm='sudo apt remove'
alias fucka='sudo apt autoremove'
alias fuckp='sudo apt purge'
alias fuckc='sudo apt autoclean'
alias fuckg='sudo apt upgrade'
alias fuckgl='sudo apt list --upgradable -a'

###CAPSLOCKESCAPE###

alias sss='xmodmap /home/ridho/.config/.capesc'



# Set up the prompt
PROMPT="%K{235} %k%B%K{235}%F{white}%n%f%k%b%K{235} %k%K{227}%F{4} %f%k%B%K{227}%F{16}%~%f%k%b%K{227} %k%B%K{red}%F{white}>>>%f%k%b "
RPROMPT="%B%K{red}%F{231}(Jam - Hari)%f%k%b%K{227}%F{17}(%f%k%K{227}%F{16}%T%f%k%K{227}%F{17})%f%k%K{235}%F{white}(%f%k%K{235}%F{white}%w%f%k%K{235}%F{white})%f%k"


###autoload -Uz promptinit
###promptinit
###prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
