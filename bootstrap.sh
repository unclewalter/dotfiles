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

echo "Installing brew packages"

brew install emacs
brew install --with-toolchain elvm
brew install rustup

echo "Installing zsh"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /usr/local/bin/zsh

echo "Setting up Rust environment"
rustup-init -y

echo "Installing Powerline fonts"

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo "Change font in iTerm to \"Noto Mono for Powerline\""

echo "Updating dotfiles in home directory"

sh update_dotfiles.sh
