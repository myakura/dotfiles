# fish
set fish_greeting ""

# PATH
set --export PATH $HOME/.nodebrew/current/bin $PATH

# functions
function reload-config ; source ~/.config/fish/config.fish ; end

# cask
set --export HOMEBREW_CASK_OPTS "--appdir=/Applications"

# Apps
alias g      "git"
alias server "python -m SimpleHTTPServer"

# File and directory
alias c     "clear"
alias u     "cd $HOME/"
alias p     "cd $HOME/projects/"
alias cp    "cp -i"
alias up    "cd .."
alias trash "rmtrash"
alias cpdir "cp -pR"

# Homebrew
alias brewup "brew update; and brew upgrade; and brew cleanup; and brew prune"

# Git
alias pull  "git pull"
alias fumum "git fetch upstream; and git merge upstream/master"
