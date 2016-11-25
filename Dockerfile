FROM alpine
MAINTAINER Stian Larsen <lonixx@gmail.com>
COPY ROOT /
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
apk --no-cache -q add ansible@edge openssh-client && mkdir -p ~/.ssh
