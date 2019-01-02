#!/usr/bin/env bash

if ! grep -q "source $HOME/.bash_profile" $HOME/.bashrc ; then
    printf "\n\nsource $HOME/.bash_profile" >> $HOME/.bashrc
    echo "Added line to source .bash_profile to ~/.bashrc"
else
    echo "Line to source ~/.bash_profile exists in ~/.bashrc"
fi

# https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ ! -f "$HOME/.bash_pofile" ] ; then
    echo "~/.bash_profile already exists, not linking to it."
    echo "Examine and remove it if need to update."
else
    ln -s $DIR/.bash_profile $HOME/.bash_profile
    echo "Linked .bash_profile from repo to ~/.bash_profile"
fi
