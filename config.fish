# fish
set fish_greeting ""

# PATH
set -x PATH /usr/local/bin /usr/local/sbin /usr/bin /bin /usr/sbin /sbin
set -x PATH /Users/myakura/.nodebrew/current/bin $PATH

# Apps
alias g="git"
alias server="python -m SimpleHTTPServer"

# File and directory
alias rm="rmtrash"
alias trash="rmtrash"
alias cpdir="cp -pR"
alias cp="cp -i"

# Homebrew, npm
alias brewup="brew update; and brew upgrade --all; and brew cleanup; and brew prune"
alias npmup="npm cache clean; and npm update -g"
alias allup="npmup; brewup"

# Git
alias pull="git pull"
alias fumum="git fetch upstream; and git merge upstream/master"
