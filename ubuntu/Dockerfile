# My usage
# GNU Compilers
# BSD Utils
# VIM editor
# Git
# Python

FROM ubuntu:18.04

# Set locale
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# To avoid debian config dialog
ENV DEBIAN_FRONTEND noninteractive

# Time Zone environment
# https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update Ubuntu
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    build-essential \
    vim \
    bsdmainutils \
    ctags \
    cscope \
    curl \
    wget \
    git \
    dstat \
    make

# Anaconda Installation
RUN mkdir /install
RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh -O /install/anaconda.sh
# COPY Anaconda3-2020.07-Linux-x86_64.sh /install/anaconda.sh
RUN ls -la /install/
RUN /bin/bash /install/anaconda.sh -b -p /opt/conda && \
    rm /install/anaconda.sh && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc

# Python Installation
# https://hackersandslackers.com/multiple-versions-python-ubuntu/
# https://docs.python-guide.org/starting/install3/linux/
# RUN apt-get install software-properties-common -y
# RUN add-apt-repository ppa:deadsnakes/ppa -y
# RUN apt-get update
# RUN apt-get install python3.8 -y
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

# COPY Files
COPY ./.custom_commands.sh /root/
COPY ./.vimrc /root/
RUN echo "source ~/.custom_commands.sh" >> ~/.bashrc

ENTRYPOINT ["/bin/bash"]