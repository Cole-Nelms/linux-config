#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

use_color=ture
force_color_prompt=yes

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

battery(){
  CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
  echo "${CAPACITY}%"
}

C1="\e[0;32m"
C2="\e[0;36m"
C3="\e[0;92m"
C4="\e[0;96m"
END="\e[m"

PS1="\n${C1}[${END}${C2}$(battery)${END} ${C4}\A${END} ${C3}\w${END}${C1}]${END}\n ${C3}->${END} "

trap 'echo ""' DEBUG

export VISUAL=vim
export EDITOR="$VISUAL"

