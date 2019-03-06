#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Create ict config folder
mkdir -p /etc/ict

# Set iota user as owner of lib folder
chown -R iota:iota /var/lib/ict

# Copy defaults config file if not exits
if [ ! -f /var/lib/ict/ict.cfg ]; then
    cp /usr/share/ict/ict.cfg.defaults /var/lib/ict/ict.cfg
    ln -sf /var/lib/ict/ict.cfg /etc/ict/ict.cfg
fi
