# fish
set fish_greeting ""

# functions
function config-edit
  vi ~/.config/fish/config.fish
end
function config-reload
  source ~/.config/fish/config.fish
end

# apps
abbr --add --global g git
alias server "python3 -m http.server"

# file and directory
abbr --add --global c clear
alias u "cd $HOME/"
alias p "cd $HOME/projects/"
alias l "cd $HOME/learn/"

# homebrew
abbr --add --global brewup "brew update && brew upgrade"

# git
abbr --add --global fumum "git fetch upstream && git merge upstream/master"
