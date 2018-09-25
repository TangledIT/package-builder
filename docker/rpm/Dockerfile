# Repo package builder Dockerfile

# Pull Base image
FROM centos:latest

# Update Yum repo
RUN yum -y update

# Install required packages
RUN yum -y install which gnutls git curl rpm-build nano less

# Install RVM
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby