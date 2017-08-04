#/bin/bash
#
# MAINTAINER Stephan Rayner <https://github.com/stephan-rayner>

source colours.sh

ensure_root() {
    # Make sure only root can run our script
    if [ "$(id -u)" != "0" ]; then
        echo -e "${red}>> This script must be run as root${reset}" 1>&2
        echo
        exit 1
        
    fi
}