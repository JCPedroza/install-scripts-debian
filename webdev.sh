#!/bin/bash

# php: server-side, html-embedded scripting language
lang="php"

# httpie: http and api testing
# wuzz: unteractive console tool for HTTP inspection
network="httpie wuzz"

suite="$lang $network"
apt_update="sudo apt-get update"
apt_install="sudo apt-get install $suite"
$apt_update && $apt_install

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
