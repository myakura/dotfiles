# fish
set fish_greeting ""

# PATH
set --export PATH $HOME/.nodebrew/current/bin $PATH

# functions
function reload-config ; source ~/.config/fish/config.fish ; end

# Apps
alias g      "git"
alias server "python3 -m http.server"

# File and directory
alias u     "cd $HOME/"
alias p     "cd $HOME/projects/"
alias cp    "cp -i"

# Homebrew
alias brewup "brew update; and brew upgrade"

# Git
alias fumum "git fetch upstream; and git merge upstream/master"
