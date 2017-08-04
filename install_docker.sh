#/bin/bash
#
# MAINTAINER Stephan Rayner <https://github.com/stephan-rayner>

source ensure_root.sh

install_docker() {
    wget -qO- https://get.docker.com/ | sh
}

install_docker_compose() {
    COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
    sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
    sudo chmod +x /usr/local/bin/docker-compose
    sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
}

add_clean_up_command() {
    sudo mv docker-cleanup /usr/local/bin/docker-cleanup
    sudo chmod +x /usr/local/bin/docker-cleanup
}

main(){
    ensure_root
    install_docker
    install_docker_compose
    add_clean_up_command
}

main