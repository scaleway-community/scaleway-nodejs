## -*- docker-image-name: "scaleway/nodejs:trusty" -*-
FROM scaleway/ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN curl -sL https://deb.nodesource.com/setup | sudo bash - \
 && apt-get -q update                                       \
 && apt-get -y -qq upgrade                                  \
 && apt-get -y -qq install                                  \
        nodejs                                              \
 && apt-get clean


# Global install most famous node.js libraries
RUN set -xe; for package in \
      browserify \
      coffee-script \
      express \
      forever \
      grunt \
      grunt-cli \
      gulp \
      npm \
      pm2 \
    ; do npm install -g $package; done


## Create symbolic link to /usr/bin/node
#RUN ln -s /usr/bin/nodejs /usr/bin/node


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
