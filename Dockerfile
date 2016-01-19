## -*- docker-image-name: "scaleway/nodejs:trusty" -*-
FROM scaleway/ubuntu:amd64-trusty
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/ubuntu:armhf-trusty       # arch=armv7l
#FROM scaleway/ubuntu:arm64-trusty       # arch=arm64
#FROM scaleway/ubuntu:i386-trusty        # arch=i386
#FROM scaleway/ubuntu:mips-trusty        # arch=mips


MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo bash - \
 && apt-get -q update                                           \
 && apt-get -y -qq upgrade                                      \
 && apt-get -y -qq install                                      \
        nodejs build-essential                                  \
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
