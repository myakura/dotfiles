#!/bin/sh

mkdir ~/projects
mkdir ~/learn

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade

# install essentials
brew install git
brew install fish

# macOS apps
if [ $(uname) == "Darwin" ] ; then
  brew cask install iterm2
  brew cask install imagealpha
  brew cask install imageoptim
  brew cask install day-o
  brew cask install rectangle
  brew cask install appcleaner
  brew cask install skim
  brew cask install kap
  
  # brew cask font-source-han-sans
  # brew cask font-source-han-serif
  # brew cask font-ricty-diminished
  # brew cask font-input
fi
