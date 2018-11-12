# Package Builder - IOTA Controlled AgenT (Dev)

This repository contains a package contents and scripts for ICT.
More information, the original source and releases can be found at:

[https://github.com/Come-from-Beyond/Ict/](https://github.com/Come-from-Beyond/Ict/)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Requirements
The ICT requires Java, which is added as a subdependency of the package. It will install 'default java runtime environment (JRE)' on debian based operating system and 'Java OpenJDK' on redhat based operating syetems.

## Files
- /etc/ict/ict.properties
- /var/lib/ict/cfb/ict/*.class

## Configuration

The config files for the ICT are stored in /etc/ict/. The ict.properties
file has the following properties:

```ini
// Iota Controlled AgenT

host = 0.0.0.0
port = 14265

// Neighbor 1
neighborAHost =
neighborAPort = 14265

// Neighbor 2
neighborBHost =
neighborBPort = 14265

// Neighbor 3
neighborCHost =
neighborCPort = 14265

```

## Service management

The ICT can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start ict

# Stop
systemctl stop ict

# Restart
systemctl restart ict

# Status
systemctl status ict
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the ict you can use the following command:

```bash
journalctl -u ict.service
```
