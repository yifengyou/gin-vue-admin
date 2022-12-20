FROM fedora:36
LABEL maintainers="yifengyou 13518106436@163.com"

RUN cat /etc/yum.repos.d/*.repo && dnf makecache && \
    dnf -y install systemd findutils which passwd

RUN dnf install -y \
        git \
        vim \
        net-tools \
        iproute \
        tmux \
        procps-ng \
        hostname \
        dnf-utils

RUN dnf install -y \
    redis \
    nginx \
    go \
    spawn \
    xdg-utils \
    npm \
    community-mysql \
    community-mysql-server \
    && dnf clean all \
    && go env -w GO111MODULE=on \
    && echo "net.core.somaxconn = 1024" >> /etc/sysctl.conf \
    && echo "vm.overcommit_memory = 1" >> /etc/sysctl.conf

COPY files/gva-init /usr/bin/gva-init
