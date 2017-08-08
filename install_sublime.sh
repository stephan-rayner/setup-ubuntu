#!/bin/bash
#
# MAINTAINER <https://github.com/stephan-rayner>

source ensure_root.sh

install_gpg_key() {
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
}

select_stable_channel() {
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
}

main() {
    ensure_root
    install_gpg_key
    select_stable_channel
    apt-get update
    apt-get install -y sublime-text
}

main
