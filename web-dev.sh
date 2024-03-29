#!/bin/bash

# php: server-side, html-embedded scripting language
# python3-venv: create virtual environments for python
lang="php python3-venv"

# Dependencies needed to build python
pybuild1="build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev"
pybuild2="libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev"
pybuild3="libxmlsec1-dev libffi-dev liblzma-dev"
pybuild="$pybuild1 $pybuild2 $pybuild3"

# postgresql: object-relational sql database
db="postgresql"

# httpie: http and api testing
# wuzz: interactive console tool for HTTP inspection
network="httpie wuzz"

suite="$lang $pybuild $network"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"

printf "*** Running 'apt-get update && apt-get install'***\n"
$apt_update && $apt_install

# pyenv: python version manager
# for the latest pyenv install instructions see:
# https://github.com/pyenv/pyenv
curl https://pyenv.run | bash

# nvm: node (js runtime) version manager
# for the latest nvm install instructions see:
# https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# bun: js runtime
# for the latest bun install instructions see:
# https://github.com/oven-sh/bun
curl -fsSL https://bun.sh/install | bash

# deno: js runtime
# for the latest deno install instructions see:
# https://docs.deno.com/runtime/manual/getting_started/installation
curl -fsSL https://deno.land/install.sh | sh
