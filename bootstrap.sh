#!/bin/bash

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; then
   echo "is correctly installed"
else
   echo "isn\'t correctly installed"
fi

# Checking for and installing or updating Homebrew
if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

if [[ $(command -v zsh) == "" ]]; then
    echo "Installing zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

sh update_dotfiles.sh
