FROM ubuntu:latest
RUN apt-get update && apt-get install -y locales emacs-nox wget build-essential camlp5

RUN locale-gen en_US.UTF-8
ENV LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ADD .emacs /root/
ADD setup.el .
ADD setup.sh .
RUN chmod u+x setup.sh
RUN ./setup.sh

# update packages
RUN emacs --script setup.el

WORKDIR "/usr/src"
VOLUME "/usr/src"
