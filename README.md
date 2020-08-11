# My-Docker-Images

My development docker images

## Default Volume

    MY_DOCKER_WORKSPACE = D:/DockerWorkSpace

## Ubuntu

    docker build -t gymk/ubuntu:18.04 .
    docker run --rm -it -v ${PWD}:/work -d --name my_ubuntu gymk/ubuntu:18.04
    docker exec -it my_ubuntu /bin/bash
    docker stop my_ubuntu

## Android build image

    docker build -t android-build:android-gradle .
    docker run --rm -v ${PWD}:/home/gradle -w /home/gradle android-build:android-gradle gradle -PdisablePreDex clean
    docker run --rm -v ${PWD}:/home/gradle -w /home/gradle android-build:android-gradle gradle -PdisablePreDex lint

## Check-out Android AOSP

    Use Ubuntu image
    git config --global user.name "Your Name"
    git config --global user.email "you@example.com"
    mkdir ~/bin
    export PATH=~/bin/:$PATH
    curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo
    repo init -u https://android.googlesource.com/platform/manifest
    repo sync
