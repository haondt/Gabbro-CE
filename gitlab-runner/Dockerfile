FROM gitlab/gitlab-runner:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y \
	python3 \
	python3-pip \
	sudo \
	wget \
	curl \
	tree \
	sshpass \
        rsync

RUN apt-get clean

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN ansible-galaxy collection install -U ansible.posix -p /usr/share/ansible/collections
RUN ansible-galaxy collection install -U community.docker -p /usr/share/ansible/collections
RUN ansible-galaxy collection install -U community.general -p /usr/share/ansible/collections
