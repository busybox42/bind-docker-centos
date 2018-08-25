#################################################################
# Dockerfile to build a bind container image
# Based on CentOS 7
# Created by Alan Denniston
#################################################################
FROM centos:latest
MAINTAINER Alan Denniston <alan.denniston@gmail.com>

RUN yum update -y --nogpgcheck && yum install -y --nogpgcheck \
  bind \
  bind-utils \
  openssl \
  && yum clean all \
  && yum clean metadata

VOLUME ["/var/named"]

EXPOSE 53/udp

ENTRYPOINT /usr/sbin/named -u named -c /etc/named.conf -f

CMD ["true"]
