#!/bin/bash

# Remove NPM package
npm uninstall -g @semkodev/nelson.cli

# Remove lib folder
rm -rf /var/lib/nelson/
