basics:
	bash install_basics.sh

docker:
	bash install_docker.sh

jeeves: basics docker

all: basics docker