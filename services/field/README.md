# Package Builder - Field by Semkodev

This repository contains a package contents and scripts for Field.
More information, the original source and releases can be found at:

[https://gitlab.com/semkodev/field.cli](https://gitlab.com/semkodev/field.cli)

## Table of Contents
- [Requirements](#requirements)
- [Files](#files)
- [Configuration](#configuration)
- [Service management](#service-management)
- [Logs](#logs)

## Requirements
Field requires nodejs 8 or higher installe. This version cannot be found in the default list. If you want to install nodejs you can learn how at:
[https://nodejs.org/en/download/package-manager/](https://nodejs.org/en/download/package-manager/)

## Files
- /etc/field/field.ini

## Configuration

The config files for the Field are stored in /etc/field/. There you can modify the field default config. The field.ini file has the following properties:

```ini
[field]
name = MyField
; Optional, which IP to bind the node on
bindAddress = 0.0.0.0
port = 21310
; If you want Field to generate a custom id, instead of using machine-id.
; This is the safest and favored way:
customFieldId = true

; You can choose which Field(s) to connect to:
fieldHostname[] = field.deviota.com:80
; It can be several Fields. Just repeat:
; fieldHostname[] = field.deviota.com:80
; fieldHostname[] = another.field.com:8080
; fieldHostname[] = mytest.field.com:5000

; IRI connection details:
IRIPort = 14265
IRIHostname = localhost

address = SOZAIPJMQUBOFCTDTJJDXCZEKNIYZGIGVDLFMH9FFBAYK9SWGTBCWVUTFHXDOUESZAXRJJCJESJPIEQCCKBUTVQPOW
; Alternatively to address, you can provide a (NEW) seed
; In this case, the Field client will be generating new, unused addresses dynamically.
; seed = XYZ

; What jobs your node should be able to accept:
; both true         - only attachToTangle jobs accepted
; disableIRI false  - all jobs accepted
; pow false         - no jobs accepted
; both false        - all jobs except attachToTangle accepted
pow = true
disableIRI = false
```

More information about the properties can be found in the [Field](https://gitlab.com/semkodev/field.cli)

## Service management

Field can be managed by Systemd, with the following commands:

```bash
# Start
systemctl start field

# Stop
systemctl stop field

# Restart
systemctl restart field

# Status
systemctl status field
```

## Logs

Systemd services stores the log files in syslog (/var/log/syslog). If you like to display logs of the field service you can use the following command:

```bash
journalctl -u field.service
```