#!/bin/sh

ln --symbolic ~/.dotfiles/.gitconfig ~/.gitconfig
ln --symbolic ~/.dotfiles/.gitignore ~/.gitignore

mkdir ~/projects
mkdir ~/learn

# macOS
if [ $(uname) == "Darwin" ] ; then

  # install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  brew update
  brew upgrade

  brew install git
  brew install fish

  # apps
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

# Crostini
if [ $(uname -n) == "penguin" ] ; then

  # install Firefox
  sudo apt install libdbus-glib-1-2

  mkdir -p ~/apps/
  cd ~/apps/
  wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64&lang=en-US"
  tar xjf FirefoxSetup.tar.bz2
  rm FirefoxSetup.tar.bz2

  mkdir -p ~/.local/share/applications/
  cp ~/.dotfiles/Firefox.desktop ~/.local/share/applications/

  # install fonts
  # apt install fonts-roboto
  # apt install fonts-noto-cjk-extra
  # apt install fonts-noto-color-emoji
  # apt install fonts-ricty-diminished
fi
