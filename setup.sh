#!/bin/sh

ln --symbolic ~/.dotfiles/.gitconfig ~/.gitconfig
ln --symbolic ~/.dotfiles/.gitignore ~/.gitignore

mkdir -p ~/projects
mkdir -p ~/learn
mkdir -p ~/contribute

mkdir -p ~/.config/fish/
ln --symbolic ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
source ~/.config/fish/config.fish

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

	wget -O FirefoxSetup.tar.bz2 -P ~/apps/ "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=linux64&lang=en-US"
	tar xjf ~/apps/FirefoxSetup.tar.bz2
	rm ~/apps/FirefoxSetup.tar.bz2

	mkdir -p ~/.local/share/applications/
	sudo echo -e "[Desktop Entry]\nType=Application\nName=Firefox\nExec=/home/myakura/apps/firefox/firefox\nIcon=/home/myakura/apps/firefox/browser/chrome/icons/default/default128.png\n" >> ~/.local/share/applications/Firefox.desktop

	# install fonts
	sudo apt install fonts-noto-cjk-extra
	sudo apt install fonts-noto-color-emoji
	sudo apt install fonts-ricty-diminished

	# install Japanese input
	sudo apt install fcitx-mozc
	sudo echo -e "Environment=\"GTK_IM_MODULE=fcitx\"\nEnvironment=\"QT_IM_MODULE=fcitx\"\nEnvironment=\"XMODIFIERS=@im=fcitx\"" >> /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
	sudo echo -e "/usr/bin/fcitx-autostart" >> ~/.sommelierrc
	echo "installed fcitx-mozc. restart the shell and open fcitx-configtool to add Mozc."
fi
