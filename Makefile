basics:
	sudo bash install_basics.sh

docker:
	sudo bash install_docker.sh

sublime:
	sudo bash install_sublime.sh

jeeves: basics docker

all: basics sublime docker
