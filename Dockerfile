FROM ubuntu

LABEL maintainer="Kaspar Schleiser <kaspar@schleiser.de>"

ENV DEBIAN_FRONTEND noninteractive

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN \
    echo 'Update the package index files to latest available versions' >&2 && \
    apt-get update && \
    echo 'Installing static test tools' >&2 && \
    apt-get -y --no-install-recommends install \
        build-essential \
        ca-certificates \
        cmake \
        python \
        wget \
        && \
    echo 'Cleaning up installation files' >&2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /build
RUN chmod a+rwx /build
COPY build.sh /build

WORKDIR /build
ENTRYPOINT ["/bin/sh", "build.sh"]
