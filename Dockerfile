FROM python:3

RUN apt-get update && pip install --upgrade pip

COPY mnist.py /mnist.py

RUN pip install torch==1.5.0 torchvision==0.6.0

WORKDIR /workdir

ENTRYPOINT ["python", "/mnist.py"]
