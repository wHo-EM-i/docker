FROM ubuntu:latest
LABEL maintainer "wHoEMi"

# Malaysian timezone (GMT+5:30)
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
        bc \
        bison \
        ca-certificates \
        curl \
        ccache \
        flex \
        gcc \
        git \
        libc6-dev \
        libssl-dev \
        make \
        openssl \
        python2 \
        ssh \
        wget \
        zip \
        unzip \
        p7zip \
        zstd
