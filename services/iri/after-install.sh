#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Create iri config folder
mkdir -p /etc/iri

# Create iri db
mkdir -p /var/lib/iri/db

# Set iota user as owner of lib folder
chown -R iota:iota /var/lib/iri

# Copy defaults config file if not exits
if [ ! -f /etc/iri/iri.ini ]; then
    cp /usr/share/iri/iri.ini.defaults /etc/iri/iri.ini
fi

# Copy defaults java config if not exits
if [ ! -f /etc/iri/java.properties ]; then
    cp /usr/share/iri/java.properties.defaults /etc/iri/java.properties
fi
