FROM gitlab/gitlab-runner:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y \
	python3 \
	python3-pip \
	sudo \
	wget \
	curl \
	sshpass \
	tree

RUN apt-get clean

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
