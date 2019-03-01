# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/digitalphoton/.zshrc'

autoload -Uz compinit
autoload -Uz add-zsh-hook

function xterm_title_precmd () {
  print -Pn '\e]2;%1~ %(!.#.$) - zsh \a'
}

if [[ "$TERM" == (screen*|xterm*|rxvt*) ]]; then
  add-zsh-hook -Uz precmd xterm_title_precmd
fi

PROMPT='%B%F{red}%n%f%b@%B%F{blue}%m%f%b:%B%F{green}%0~%f%b 
%(!.%F{yellow}#%f.$) '
RPROMPT='[%F{yellow}%?%f]'

compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory notify
unsetopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Set default editor to vim
export EDITOR=vim

# Aliases
alias ls='exa'
alias la='exa -a'
alias ll='exa -l --header --git --time-style=long-iso'
alias lla='exa -la --header --git --time-style=long-iso'

# Keychain
eval $(keychain --eval --quiet --noask --nogui id_rsa)

