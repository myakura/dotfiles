# fish
set fish_greeting ""

# PATH
set --export PATH $HOME/.nodebrew/current/bin $PATH

# functions
function config-edit ; vi ~/.config/fish/config.fish ; end
function config-reload ; source ~/.config/fish/config.fish ; end

# apps
abbr --add --global g git
alias server "python3 -m http.server"

# aile and directory
abbr --add --global c clear
alias u "cd $HOME/"
alias p "cd $HOME/projects/"
alias l "cd $HOME/learn/"

# Homebrew
abbr --add --global brewup "brew update && brew upgrade"

# Git
abbr --add --global fumum "git fetch upstream && git merge upstream/master"
