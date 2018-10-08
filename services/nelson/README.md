# Package Builder - Nelson by Semkodev

This repository contains a package contents and scripts for Nelson.
More information, the original source and releases can be found at:

[https://gitlab.com/semkodev/nelson.cli](https://gitlab.com/semkodev/nelson.cli)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Files
- /etc/nelson/nelson.ini

## Configuration

The config files for the Nelson are stored in /etc/nelson/. There you can modify the nelson default config. The nelson.ini file has the following properties:

```ini
[nelson]
name = My Nelson Node
cycleInterval = 60
epochInterval = 300
apiPort = 18600
apiHostname = 127.0.0.1
port = 16600
IRIHostname = localhost
IRIProtocol = any
IRIPort = 14265
TCPPort = 15600
UDPPort = 14600
dataPath = /var/lib/nelson/neighbors.db
; maximal incoming connections. Please do not set below this limit:
incomingMax = 5
; maximal outgoing connections. Only set below this limit, if you have trusted, manual neighbors:
outgoingMax = 4
isMaster = false
silent = false
gui = false
getNeighbors = https://gitlab.com/semkodev/nelson.cli/raw/master/ENTRYNODES
; add as many initial Nelson neighbors, as you like
neighbors[] = mainnet.deviota.com/16600
neighbors[] = mainnet2.deviota.com/16600
neighbors[] = mainnet3.deviota.com/16600
neighbors[] = iotairi.tt-tec.net/16600

; Protect API with basic auth
[nelson.apiAuth]
username=
password=
```

More information about the properties can be found in the [Nelson](https://gitlab.com/semkodev/nelson.cli)

## Service management

Nelson can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start nelson

# Stop
systemctl stop nelson

# Restart
systemctl restart nelson

# Status
systemctl status nelson
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the nelson service you can use the following command:

```bash
journalctl -u nelson.service
```
