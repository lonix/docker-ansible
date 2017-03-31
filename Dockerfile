FROM alpine
MAINTAINER Stian Larsen <lonixx@gmail.com>
COPY ROOT /
RUN apk --no-cache -q add ansible@edge openssh-client && mkdir -p ~/.ssh
