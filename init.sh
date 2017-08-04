#!/bin/bash
#
# MAINTAINER Stephan Rayner <https://github.com/stephan-rayner>

source ensure_root.sh

main() {
    # I know what you are thinking. Make... really... you have to install make?
    # Some distros don't come with it ... I'm looking at you Debian <insert pointed glare here>
    apt-get install -y make
}

main
