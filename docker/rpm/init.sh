#!/bin/bash

# Load RVM
source "/etc/profile.d/rvm.sh"

# Cd in to repo folder
cd /opt/tangled-repo/

# Run bundler to install FPM gem
bundle

# load bash shell
/bin/bash
