FROM gymk/ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
    gawk \
    diffstat \
    unzip \
    texinfo \
    gcc-multilib \
    chrpath \
    socat \
    libsdl1.2-dev xterm sed cvs subversion \
    coreutils texi2html docbook-utils python-pysqlite2 help2man make \
    gcc g++ desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev \
    mercurial autoconf automake groff curl lzop asciidoc \
    u-boot-tools
RUN mkdir ~/bin
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && \
    chmod a+x ~/bin/repo
ENV PATH=~/bin:$PATH

ENTRYPOINT ["/bin/bash"]