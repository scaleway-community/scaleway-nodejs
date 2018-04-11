## -*- docker-image-name: "scaleway/golang:latest" -*-
ARG SCW_ARCH
FROM scaleway/ubuntu:${SCW_ARCH}-xenial


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter

# Install Node.js from official repository
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    && apt-get install -qy nodejs

RUN for package in \
    browserify \
    coffee-script \
    express \
    forever \
    grunt \
    grunt-cli \
    gulp \
    pm2 \
    webpack \
    ; do npm install --unsafe-perm -g $package; done

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
