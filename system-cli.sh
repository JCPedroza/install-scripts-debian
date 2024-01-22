#!/bin/bash

# Friendly interactive shell
shell="fish"

# ncdu: disk usage viewer
# bpytop: resource monitor
monitor="ncdu bpytop"

# tree: displays an indented directory tree
file="tree"

suite="$shell $monitor $file"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"

$apt_update && $apt_install
