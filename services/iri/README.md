# Package Builder - IOTA Reference Implementation

This repository contains a package contents and scripts for IRI.
More information, the original source and releases can be found at:

[https://github.com/iotaledger/iri](https://github.com/iotaledger/iri)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Requirements
The IRI requires Java, which is added as a subdependency of the package. It will install 'default java runtime environment (JRE)' on debian based operating system and 'Java OpenJDK' on redhat based operating syetems.

## Files
- /usr/share/iri.ini.defaults
- /usr/share/java.properties.defaults
- /usr/bin/iri_install_snapshot
- /var/lib/iri/iri.jar

## Configuration

The config files for the IRI are stored in /etc/iri/. There you can modify the iri default config and java properties separately. The java properties set the amount of memory IRI for example. The iri.ini
file has the following properties:

```ini
[IRI]
PORT = 14265
UDP_RECEIVER_PORT = 14600
TCP_RECEIVER_PORT = 15600
API_HOST = 0.0.0.0
IXI_DIR = /var/lib/iri/ixi
HEADLESS = true
DEBUG = false
TESTNET = false
DB_PATH = /var/lib/iri/db
RESCAN_DB = false
ZMQ_ENABLED = true
ZMQ_PORT = 5556

REMOTE_LIMIT_API = "removeNeighbors, addNeighbors, getNeighbors, setApiRateLimit"

NEIGHBORS =
```

More information about the properties can be found in the [IRI repository](https://github.com/iotaledger/iri)

## Service management

The IRI can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start iri

# Stop
systemctl stop iri

# Restart
systemctl restart iri

# Status
systemctl status iri
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the iri you can use the following command:

```bash
journalctl -u iri.service
```
