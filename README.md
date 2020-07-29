# My-Docker-Images

My development docker images

## Ubuntu

    docker build -t myubuntu:v1 .
    docker --rm --it -d --name my_ubuntu myubuntu:v1
    docker exec --it my_ubuntu /bin/bash 

## Android build image

    docker build -t android-build:android-gradle .
    docker run --rm -v ${PWD}:/home/gradle -w /home/gradle android-build:android-gradle gradle -PdisablePreDex clean
    docker run --rm -v ${PWD}:/home/gradle -w /home/gradle android-build:android-gradle gradle -PdisablePreDex lint
