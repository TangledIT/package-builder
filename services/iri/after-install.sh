#!/bin/bash

# Add IOTA user
if [ -f /etc/redhat-release ] ; then
  adduser --system --no-create-home --user-group iota
else
  adduser --system --no-create-home --group iota
fi

# Create iri db
mkdir -p /var/lib/iri/db

# Set iota user as owner of lib folder
chown -R iota:iota /var/lib/iri