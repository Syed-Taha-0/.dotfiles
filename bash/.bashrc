
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
case $- in
    *i*) ;; *) return;; esac
# append to the history file, don't overwrite it
shopt -s histappend

# Environment variables

HISTSIZE=1000
HISTFILESIZE=2000
export PF_ASCII="arch"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# ALIASES
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -CF --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# [--Handy ls Aliases--]
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF --color=auto'

alias cal='ncal -b'
alias tree='tree -L 2'
function apropol
{
	man -k $1 | less
}
alias hello="echo 'Hi there!'"
alias vim='nvim'
alias nvconf='cd ~/.config/nvim/;vim init.lua;'
alias confi='cd ~/.config/;vim .;'
# Startup-commands
pfetch;
# cowsay "Welcome to the BASH shell!"; echo -e "\n"
bind -s 'set completion-ignore-case on'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi



