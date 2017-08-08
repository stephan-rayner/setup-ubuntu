#!/bin/bash
#
# MAINTAINED Stephan Rayner <https://github.com/stephan-rayner>

source ensure_root.sh

confirm() {
    echo "fish"; which fish
    echo "git"; which git
    echo "vim"; which vim
    echo "htop": which htop
}

main() {
    ensure_root
    apt-get update -y
    apt-get upgrade -y
    apt-get install -y fish
    apt-get install -y htop
    apt-get install -y vim
    apt-get install -y git
    apt-get install -y redshift redshift-gtk
    confirm
}

main
