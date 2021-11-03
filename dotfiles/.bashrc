#
# ~/.bashrc
#

set -o vi

clear

alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"

alias c="clear"
alias lah="ls -lah"

alias suyyy="sudo pacman -Suyyy"
alias pacs="sudo pacman -S"
alias pacsy="sudo pacman -Sy"
alias pacss="sudo pacman -Ss"
alias pacqs="sudo pacman -Qs"
alias pacqm="sudo pacman -Qm"
alias pac="sudo pacman"
alias v="vim"

black='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
green='\[\033[01;32m\]'   # Green
yellow='\[\033[01;33m\]'   # Yellow
blue='\[\033[01;34m\]'   # Blue
purple='\[\033[01;35m\]'   # Purple
cyan='\[\033[01;36m\]'   # Cyan
white='\[\033[01;37m\]'   # White
reset='\[\033[00m\]'      # Reset

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
PS1=$red'['$cyan'\u'$white'@'$green'\h'$blue' \w'$red']'$white'\$ '$reset

printf "\n"
printf "   %s\n" "USER: $(echo $USER)"
printf "   %s\n" "DATE: $(date)"
printf "   %s\n" "UPTIME: $(uptime -p)"
printf "   %s\n" "KERNEL: $(uname -rms)"
printf "   %s\n" "RESOLUTION: $(xrandr | awk '/\*/{printf $1" "}')"
printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
printf "\n"


