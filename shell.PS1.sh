#!/bin/bash
## Legend:
## 40;30: Black
## 41;31: Red
## 42;32: Green
## 43;33: Brown
## 44;34: Blue
## 45;35: Magenta
## 46;36: Cyan
## 47;37: White

# 47;30: White under Black

#echo -e "\033[31mHello\033[0m, \033[34mworld\033[0m!"
echo -e "\033[47;31mPS1             \033[0m:\t\033[31m$PS1\033[0m"
echo -e "\033[41;33mPROMPT_START    \033[0m:\t\033[31m$PROMPT_START\033[0m"
echo -e "\033[42;34mPROMPT_COLOR    \033[0m:\t\033[31m$PROMPT_COLOR\033[0m"
echo -e "\033[43;32mPROMPT_USERHOST \033[0m:\t\033[31m$PROMPT_USERHOST\033[0m"
echo -e "\033[44;35mPROMPT_SEPARATOR\033[0m:\t\033[31m$PROMPT_SEPARATOR\033[0m"
echo -e "\033[46;37mPROMPT_DIR_COLOR\033[0m:\t\033[31m${PROMPT_DIR_COLOR:-$PROMPT_COLOR}\033[0m"
echo -e "\033[45;36mPROMPT_DIRECTORY\033[0m:\t\033[31m$PROMPT_DIRECTORY\033[0m"
echo -e "\033[47;36mPROMPT_END      \033[0m:\t\033[31m$PROMPT_END\033[0m"

#export PROMPT_START=''
#export PROMPT_COLOR='42;34'
#export PROMPT_DIR_COLOR='46;37'
#export PS1=$'\033[47;30m^C\033[0m Interrupt\t\033[47;30m^Z\033[0m Suspend\t\033[47;30m^D\033[0m Close\n\033[47;30m^L\033[0m Clear Screen\t\033[47;30m^S\033[0m Stop Out\t\033[47;30m^Q\033[0m Resume Out\n\033[47;30m^K\033[0m Cut to end\t\033[47;30m^U\033[0m Cut to start\t\033[47;30m^Y\033[0m Paste\n\033[47;30m^P\033[0m Prev cmd\t\033[47;30m^N\033[0m Next cmd\t\033[47;30m^R\033[0m Srch hist\n'"$PS1"
#export PS1 = ${PROMPT_START@P}\[\e[${PROMPT_COLOR}m\]${PROMPT_USERHOST@P}\[\e[0m\]${PROMPT_SEPARATOR@P}\[\e[${PROMPT_DIR_COLOR:-${PROMPT_COLOR}}m\]${PROMPT_DIRECTORY@P}\[\e[0m\]${PROMPT_END@P}\$\[\e[0m\]

## Notes:
## `/var/home/tsilvs/.local/share/containers/storage/overlay/77eb7b425243279c82b4fa16d45bdf1c725434865e61b1ea6232cbada75a13d3/diff/usr/lib/perl5/5.38.2`
## `/etc/profile.d/bash-color-prompt.sh`
## `prompt_default()`
## `prompt_traditional()`
## `prompt_default_os()`
