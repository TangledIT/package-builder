#!/bin/bash

# Add Redix user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group redix
else
  adduser --system --no-create-home --group redix
fi

# Create redix config folder
mkdir -p /etc/redix

# Create redix db
mkdir -p /var/lib/redix/

# Set redix user as owner of lib folder
chown -R redix:redix /var/lib/redix

# Copy defaults config file if not exits
if [ ! -f /etc/redix/redix.config ]; then
    cp /usr/share/redix/redix.config.defaults /etc/redix/redix.config
fi
