#!/bin/bash

# Checking for and installing or updating Homebrew
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

if [[ $(command -v brew) == "" ]]; then
    echo "Installing zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "Updating Homebrew"
    brew update
fi

sh update_dotfiles.sh
