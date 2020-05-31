Bootstrap: docker
From: python:3

%help
MNIST with PyTorch on Singularity

%post
apt-get update
pip install --upgrade pip torch==1.5.0 torchvision==0.6.0

%files
mnist.py

%runscript
python /mnist.py "$@"
