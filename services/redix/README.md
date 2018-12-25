# Package Builder - Redix by alash3al

This repository contains a package contents and scripts for Redix, a persistent key-value store based on Redis RESP protocol.
More information, the original source and releases can be found at:

[https://github.com/alash3al/redix](https://github.com/alash3al/redix)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Files
- /etc/redix/redix.config
- /usr/share/redix/redix.config.defaults
- /usr/bin/redix-server

## Configuration

The config files for the Redix are stored in /etc/redix/. There you can modify the redix default config. The redix.config file has the following properties:

```env
REDIX_ENGINE="badger"
REDIX_HTTP_ADDR="localhost:7090"
REDIX_RESP_ADDR="localhost:6380"
REDIX_STORAGE="/var/lib/redix/"
REDIX_WORKERS=16
```

More information about the properties can be found in the [Redix](https://github.com/alash3al/redix)

## Service management

Redix can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start redix

# Stop
systemctl stop redix

# Restart
systemctl restart redix

# Status
systemctl status redix
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the Redix service you can use the following command:

```bash
journalctl -u redix.service
```
