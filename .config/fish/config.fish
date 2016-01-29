# fish
set fish_greeting ""

# PATH
set --export PATH $HOME/.nodebrew/current/bin $PATH

# functions
function reload-config ; source ~/.config/fish/config.fish ; end

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

# Homebrew, npm
alias brewup "brew update; and brew upgrade --all; and brew cleanup; and brew prune"
alias npmup  "npm cache clean; and npm update -g"
alias allup  "npmup; brewup"

# Git
alias pull  "git pull"
alias fumum "git fetch upstream; and git merge upstream/master"
