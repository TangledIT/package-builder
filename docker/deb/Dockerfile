# Repo package builder Dockerfile

# Pull Base image
FROM ubuntu:xenial

# Ruby version
ARG RUBY_VERSION=ruby-head

# Fix package locations
RUN sed -i -e 's/archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

# Clean APT repo
RUN apt-get clean

# Update APT Repo
RUN apt-get update

# Install GnuPG and Curl
RUN apt-get -y install gnupg curl

# Install NodeJS 8.x Apt repo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash

# Update APT Repo
RUN apt-get update

# Install required pacakges
RUN apt-get install -y git wget nano nodejs apt-transport-https rpm

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby