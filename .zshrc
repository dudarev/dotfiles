# WIP

# Only load Liquidprompt in interactive shells, not from a script or from scp
# https://liquidprompt.readthedocs.io/en/stable/install.html
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

# pyenv
# https://github.com/pyenv/pyenv#installation
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# history
# https://unix.stackexchange.com/questions/111718/command-history-in-zsh
# https://gist.github.com/matthewmccullough/787142
HISTSIZE=100000
HISTFILE=~/.zsh_history
SAVEHIST=100000
#HISTDUP=erase # remove duplicates from history
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# vim key bindings
# https://stackoverflow.com/questions/58187542/how-to-setup-vi-editing-mode-for-zsh
bindkey -v

# https://stackoverflow.com/questions/26462667/git-completion-not-working-in-zsh-on-os-x-yosemite-with-homebrew
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
