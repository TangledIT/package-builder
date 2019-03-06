#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Create cliri config folder
mkdir -p /etc/cliri

# Create cliri db
mkdir -p /var/lib/cliri/db

# Set iota user as owner of lib folder
chown -R iota:iota /var/lib/cliri

# Copy defaults config file if not exits
if [ ! -f /etc/cliri/cliri.ini ]; then
    cp /usr/share/cliri/cliri.ini.defaults /etc/cliri/cliri.ini
fi

# Copy defaults java config if not exits
if [ ! -f /etc/cliri/java.properties ]; then
    cp /usr/share/cliri/java.properties.defaults /etc/cliri/java.properties
fi
