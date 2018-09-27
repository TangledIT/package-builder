#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Chown iota user to library folder
mkdir -p /var/lib/field
chown -R iota:iota /var/lib/field

# Requires iota user home dir
mkdir -p /home/iota
chown -R iota:iota /home/iota

# Install NPM package
npm install -g @semkodev/field.cli@{{version}}
