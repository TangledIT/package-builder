# Package Builder - IOTA Controlled AgenT (Dev)

This repository contains a package contents and scripts for ICT.
More information, the original source and releases can be found at:

[https://github.com/iotaledger/ict](https://github.com/iotaledger/ict)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Requirements
The ICT requires Java, which is added as a subdependency of the package. It will install 'default java runtime environment (JRE)' on debian based operating system and 'Java OpenJDK' on redhat based operating syetems.

## Files
- /usr/share/ict/ict.cfg.defaults
- /var/lib/ict/ict.jar

## Configuration

The config files for the ICT are stored in /etc/ict/. The ict.cfg
file has the following properties:

```ini
name=ict
ixis=
port=1337
log_round_duration=60000
ixi_enabled=false
spam_enabled=false
min_forward_delay=0
host=0.0.0.0
neighbors=
max_forward_delay=200
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
