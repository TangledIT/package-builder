# Package Builder

This repository contains a package builder for IOTA / Tangle based services. It utilises Docker and FPM to build Debian and Redhat packages. These packages are distributed through the TangledIT repositories which you can find [here](https://repos.tangled.it).

The package builder is open to anyone, so you can even build your own
and distribute them yourself. **Tangled IT and this repository is in no way affiliated with the IOTA Foundation.**

## Table of Contents
- [Requirements](#requirements)
- [Services available](#services-available)
- [Getting started](#getting-started)
- [Todo](#todo)
- [Contributing](#contributing)

## Requirements
- Docker - [Install](https://docs.docker.com/install/)

## Services available

Currently we provide packages for:

- IRI - [More info](https://github.com/TangledIT/package-builder/tree/master/services/iri)

- Nelson (By SemkoDev) - [More info](https://github.com/TangledIT/package-builder/tree/master/services/nelson)

- Field (By SemkoDev) - [More info](https://github.com/TangledIT/package-builder/tree/master/services/field)

## Getting started

Clone the repo and cd into the directory. Run ./tangled-docker to see the possible commands. The following instructions work for building the IRI package:

```bash
# Build, run and enter the docker container
./tangled-docker build deb
./tangled-docker start deb
./tangled-docker ssh deb

# Inside the container run to build release 1.5.4
./package-iri 1.5.4

# The RPM and DEB packages can be found in the packages/ folder
```

## Todo

- Add support for more services
- Synchronize RPM and DEB packages
- ..

## Contributing

1. Fork it ( https://github.com/tangledit/package-builder/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [TangledIT](https://github.com/tangledit) vvangemert - creator, maintainer
