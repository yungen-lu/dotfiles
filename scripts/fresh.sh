#!/bin/sh

echo "setting up"

# brew update

brew tap homebrew/bundle
brew bundle --file $PWD/../Brewfile

./clone.sh

stow  ../ --target=$HOME

source $HOME/.zshrc
