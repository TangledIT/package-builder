# Package Builder - Coordinator Less IOTA Reference Implementation

This repository contains a package contents and scripts for Coordinator-Less IRI.
More information, the original source and releases can be found at:

[https://github.com/iotaledger/cliri](https://github.com/iotaledger/cliri)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Requirements
The CLIRI requires Java, which is added as a subdependency of the package. It will install 'default java runtime environment (JRE)' on debian based operating system and 'Java OpenJDK' on redhat based operating syetems.

## Files
- /usr/share/cliri.ini.defaults
- /usr/share/java.properties.defaults
- /var/lib/cliri/cliri.jar

## Configuration

The config files for the CLIRI are stored in /etc/cliri/. There you can modify the cliri default config and java properties separately. The java properties set the amount of memory CLIRI for example. The cliri.ini
file has the following properties:

```ini
[CLIRI]
PORT = 15265
UDP_RECEIVER_PORT = 16600
TCP_RECEIVER_PORT = 17600
API_HOST = 0.0.0.0
IXI_DIR = /var/lib/cliri/ixi
HEADLESS = true
DEBUG = false
TESTNET = false
DB_PATH = /var/lib/cliri/db
RESCAN_DB = false
ZMQ_ENABLED = true
ZMQ_PORT = 5557

REMOTE_LIMIT_API = "removeNeighbors, addNeighbors, getNeighbors, setApiRateLimit"

NEIGHBORS =
```

More information about the properties can be found in the [CLIRI repository](https://github.com/iotaledger/cliri)

## Service management

The CLIRI can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start cliri

# Stop
systemctl stop cliri

# Restart
systemctl restart cliri

# Status
systemctl status cliri
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the cliri you can use the following command:

```bash
journalctl -u cliri.service
```
