# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# extend bash history
export HISTSIZE=100000
export HISTFILESIZE=100000

# https://unix.stackexchange.com/questions/131504/how-to-sync-terminal-session-command-history-in-bash
shopt -u promptvars
PROMPT_COMMAND="$PROMPT_COMMAND; history -a; history -n"
# for future expansion see https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows

# needed in particular for https://github.com/dudarev/dotvim
export PATH="$HOME/bin:$PATH"

# https://stackoverflow.com/questions/2596805/how-do-i-make-git-use-the-editor-of-my-choice-for-commits
export VISUAL=vim
export EDITOR="$VISUAL"
