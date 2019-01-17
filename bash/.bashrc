#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\[\033[1;31m\]\u\[\033[0m\]@\[\033[1;34m\]\h:\[\033[1;32m\]\W\[\033[0m\] \$ '

# Aliases
alias ls='exa'
alias ll='exa -l --time-style=long-iso'
alias la='exa -a'

# Keychain
eval $(keychain --eval --quiet --noask --nogui id_rsa)

