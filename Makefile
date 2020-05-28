.PHONY: all
all: build-singularity

.PHONY: build-docker
build-docker:
	sudo docker build -t pytorch-mnist .

.PHONY: build-singularity
build-singularity: build-docker
	sudo singularity build pytorch-mnist.sif docker-daemon://pytorch-mnist:latest
