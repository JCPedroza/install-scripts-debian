#!/bin/bash

# php: server-side, html-embedded scripting language
# python3-venv: create virtual environments for python
lang="php python3-venv"

# postgresql: object-relational sql database
db="postgresql"

# httpie: http and api testing
# wuzz: interactive console tool for HTTP inspection
network="httpie wuzz"

suite="$lang $network"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"

printf "*** Running 'apt-get update && apt-get install'***\n"
$apt_update && $apt_install

# pyenv: python version manager
# for the latest pyenv install instructions see:
# https://github.com/pyenv/pyenv
curl https://pyenv.run | bash

# nvm: node version manager (node is a js runtime)
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
