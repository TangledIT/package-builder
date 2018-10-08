#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Chown iota user to library folder
mkdir -p /var/lib/nelson
chown -R iota:iota /var/lib/nelson
