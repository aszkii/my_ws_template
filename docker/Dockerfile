FROM python:3.11 AS builder

RUN apt-get update && apt-get install -y \
    fonts-migmix libgl1-mesa-dev

ARG USER_NAME=devel
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USER_NAME && \
    useradd --uid $USER_UID --gid $USER_GID -m ${USER_NAME} -s /bin/bash

USER ${USER_NAME}
RUN mkdir ${HOME}/workspace
RUN echo 'PS1="${debian_chroot:+($debian_chroot)}\[\\\\033[01;32m\]\u@\h\[\\\\033[00m\]:\[\\\\033[01;33m\]\w\[\\\\033[00m\]\\n\$ "' >> ~/.bashrc
