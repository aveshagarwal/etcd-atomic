FROM fedora 

MAINTAINER Avesh Agarwal <avagarwa@redhat.com>

ENV container docker

RUN yum -y update; yum -y install etcd; yum clean all

LABEL Version=1.0
LABEL Vendor="Red Hat"

LABEL INSTALL="docker run --rm --privileged -v /:/host -e HOST=/host -e IMAGE=IMAGE -e NAME=NAME IMAGE /usr/bin/install.sh"
LABEL UNINSTALL="docker run --rm --privileged -v /:/host -e HOST=/host -e IMAGE=IMAGE -e NAME=NAME IMAGE /usr/bin/uninstall.sh"
LABEL RUN="docker run -d -p 4001:4001 -p 7001:7001 -p 2379:2379 -p 2380:2380 --privileged -v /etc/etcd:/etc/etcd -v /var/lib/etcd:/var/lib/etcd IMAGE"

ADD root /

EXPOSE 4001 7001 2379 2380

CMD ["/usr/bin/etcd", "--name=default", "--data-dir=/var/lib/etcd/default.etcd", "--listen-client-urls=https://0.0.0.0:2379,http://0.0.0.0:4001", "--listen-peer-urls=https://0.0.0.0:2380,http://0.0.0.0:7001"]
