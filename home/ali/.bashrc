#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# You can also add custom aliases that will not be overwritten by Salt.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# History and bash settings
HISTTIMEFORMAT="%d/%m/%y %T "
HISTSIZE=100000
HISTFILESIZE=200000
shopt -s histappend
shopt -s checkwinsize

# Colors
green="\e[0;32m"
lgreen="\e[1;32m"
yellow="\e[0;33m"
lyellow="\e[1;33m"
blue="\e[0;34m"
lblue="\e[1;34m"
nocolor="\e[0m"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[1;30m\]\u\[\033[00m\]@\[\033[1;36m\]\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export TERM=xterm-color
