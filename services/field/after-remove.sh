#!/bin/bash

# Remove NPM package
npm uninstall -g @semkodev/field.cli

# Remove lib folder
rm -rf /var/lib/field/
