FROM centos

# Add repo file
ADD ./gymk.repo /etc/yum.repos.d/

# Install cool software
RUN yum --assumeyes update && \
yum --assumeyes install \
nmap iproute && \
bash && \
yum clean all

CMD ["/usr/bin/nmap", "-sn", "172.17.0.0/24"]
