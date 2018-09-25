#!/bin/bash

# Add IOTA user and chmod IRI folder
adduser --system --no-create-home --user-group iota
mkdir -p /var/lib/iri/db
chown -R iota:iota /var/lib/iri