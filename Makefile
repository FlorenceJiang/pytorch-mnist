.PHONY: all
all: \
	build-docker \
	build-singularity

.PHONY: build-docker
build-docker:
	sudo docker build -t pytorch-mnist .

.PHONY: build-singularity
build-singularity:
	sudo singularity build pytorch-mnist.sif Singularity
