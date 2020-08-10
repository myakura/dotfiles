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
abbr --add --global server "python3 -m http.server"

# file and directory
abbr --add --global c clear
abbr --add --global u "cd $HOME/"
abbr --add --global p "cd $HOME/projects/"
abbr --add --global l "cd $HOME/learn/"
abbr --add --global w "cd $HOME/work/"

# homebrew/apt
abbr --add --global brewup "brew update && brew upgrade"
abbr --add --global aptup "sudo apt update && sudo apt upgrade"

# git
abbr --add --global fumum "git fetch upstream && git merge upstream/master"
