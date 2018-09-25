#!/bin/bash

adduser --system --no-create-home --group iota
chown -R iota:iota /var/lib/nelson

npm install -g @semkodev/nelson.cli@{{version}}
