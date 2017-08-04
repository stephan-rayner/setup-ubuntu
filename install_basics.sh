#!/bin/bash
#
# MAINTAINED Stephan Rayner <https://github.com/stephan-rayner>

source ensure_root.sh

main() {
    apt-get update
    apt-get upgrade
    apt-get install -y fish
    apt-get install -y htop
    apt-get install -y vim
    apt-get install -y git
}

main