FROM ubuntu

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y
RUN apt-get install build-essential -y
RUN apt-get install vim -y
RUN apt-get install bsdmainutils -y

ENTRYPOINT ["/bin/bash"]