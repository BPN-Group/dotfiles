#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export TERM=xterm-color

# Color Definitions
GREY="\[\e[48;5;240m\]\[\e[38;5;250m\]"                # Grey background with light grey text
GREY_END="\[\e[0m\]\[\e[38;5;240m\]\[\e[0m\] " # Grey end with reset

BLUE="\[\e[48;2;171;176;255m\]\[\e[38;5;0m\]"          # Blue background (RGB) with black text
BLUE_END="\[\e[48;5;240m\]\[\e[38;2;171;176;255m\]"   # Transition: Grey background, blue foreground

# Construct Prompt
PS1="${BLUE} @\u ${BLUE_END} ${GREY} \W ${GREY_END}"