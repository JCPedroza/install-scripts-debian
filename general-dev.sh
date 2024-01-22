#!/bin/bash

# git: distributed version control system
# git-gui: gui for git commits
# gitk: gui for git browsing
# gh: github command line tools
git="git git-gui gitk gh"

# emacs: command line and gui text editor
# vim: command line text editor
# sublime-text: gui text editor
# code: gui text editor (vs code)
editor="emacs vim sublime-text code"

suite="$git $editor"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"

$apt_update && $apt_install
