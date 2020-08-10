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

# scaffolding
function scaffold -d "create a project with a bit of initialization"
  set argcount (count $argv)
  echo "scaffold called with $argcount args: $argv"

	# if no arguments given, use the current directory
	set working_directory (pwd)

  # grab the last argument as a name of the project
  if test $argcount -gt 0
    set name $argv[-1]
		echo "name: $name"

		set working_directory (pwd)"/"$name
    mkdir -p $working_directory
		cd $working_directory
  end

	echo "directory: $working_directory"

	echo "set up editorconfig and prettier"
  cp ~/.dotfiles/.editorconfig .
  cp ~/.dotfiles/.prettierrc.toml .

	# treat arguments besides the last one as options
	if test $argcount -gt 1
		set options $argv[1..-2]
		echo "options: $options"

		if contains -- "--git" $options
			git init
		end

		if contains -- "--npm" $options
			npm init --yes
		end
	end
end
