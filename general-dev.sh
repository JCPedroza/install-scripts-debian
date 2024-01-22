#!/bin/bash

# code: gui text editor (vs code)
# sublime-text: gui text editor
# emacs: command line and gui text editor
# vim: command line text editor
# neovim: command line text editor
# kate: gui text editor
editor="code sublime-text emacs vim neovim kate"

# git: distributed version control system
# git-gui: gui for git commits
# gitk: gui for git browsing
# gh: github command line tools
git="git git-gui gitk gh"

suite="$editor $git"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"

printf "*** Running 'apt-get update && apt-get install'***\n"
$apt_update && $apt_install
