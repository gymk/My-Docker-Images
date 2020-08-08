# My usage
# GNU Compilers
# BSD Utils
# VIM editor
# Git
# Python

FROM ubuntu

# To avoid debian config dialog
ENV DEBIAN_FRONTEND noninteractive

# Time Zone environment
# https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update Ubuntu
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y

# Install compilers
RUN apt-get install build-essential checkinstall -y

# Install VIM
RUN apt-get install vim -y
RUN apt-get install bsdmainutils -y

# Install GIT
RUN apt-get install git -y

# Python Installation
# https://hackersandslackers.com/multiple-versions-python-ubuntu/
# https://docs.python-guide.org/starting/install3/linux/
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update
RUN apt-get install python3.8 -y
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

# Debug Tools
RUN apt-get install dstat -y

ENTRYPOINT ["/bin/bash"]